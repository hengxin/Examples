-------------------------------- MODULE OneVotePaxos ------------------------
(* 
This is a specification of the Paxos algorithm without explicit leaders or learners.

In this version:

1. Phase2a(b, v): Delete the enabling condition 
"~ \E m \in msgs : m.type = "2a" /\ m.bal = b".
Then, OneValuePerBallot (and hence, OneVote) does not hold anymore.
Consistency is also broken.
See the error trace file: OneVotePaxos-phase2a-error-trace.md

2. Phase2b(a): To fix (1), we change "m.bal >= maxBal[a]"
to "m.bal > maxBal[a] \/ (m.bal = maxBal[a] /\ maxVal[a] = None)" 
to restore OneVote and also Consistency.

Additionally,

Phase1b(a): it is safe to send "1b" messages unconditionally by
merging "/\ m.bal > maxBal(a)" and "/\ maxBal' = [maxBal EXCEPT ![a] = m.bal]"
into "/\ maxBal' = [maxBal EXCEPT ![a] = Max(m.bal, @)]".
However, this hurts performance significantly (therefore, we do not do this).
*)
EXTENDS Integers, TLC
-----------------------------------------------------------------------------
Max(m, n) == IF m < n THEN n ELSE m
-----------------------------------------------------------------------------
CONSTANT Value, Acceptor, Quorum

ASSUME QuorumAssumption == 
    /\ \A Q \in Quorum : Q \subseteq Acceptor
    /\ \A Q1, Q2 \in Quorum : Q1 \cap Q2 # {} 
      
Ballot ==  Nat
None == CHOOSE v : v \notin Ballot
  
Message ==      
         [type : {"1a"}, bal : Ballot]
    \cup [type : {"1b"}, acc : Acceptor, bal : Ballot,
          mbal : Ballot \cup {-1}, mval : Value \cup {None}]
    \cup [type : {"2a"}, bal : Ballot, val : Value]
    \cup [type : {"2b"}, acc : Acceptor, bal : Ballot, val : Value]
-----------------------------------------------------------------------------
VARIABLE maxBal,  \* maxBal[a]: the largest ballot number a has seen
         maxVBal, \* <<maxVBal[a], maxVal[a]>> is the vote with the largest
         maxVal,  \* ballot number cast by a; it is <<-1, None>> if a has not cast any vote.
         msgs     \* The set of all messages that have been sent.

Send(m) == msgs' = msgs \cup {m}

vars == <<maxBal, maxVBal, maxVal, msgs>>
(***************************************************************************)
(* NOTE:                                                                   *)
(* The algorithm is easier to understand in terms of the set msgs of all   *)
(* messages that have ever been sent.  A more accurate model would use     *)
(* one or more variables to represent the messages actually in transit,    *)
(* and it would include actions representing message loss and duplication  *)
(* as well as message receipt.                                             *)
(*                                                                         *)
(* In the current spec, there is no need to model message loss because we  *)
(* are mainly concerned with the algorithm's safety property.  The safety  *)
(* part of the spec says only what messages may be received and does not   *)
(* assert that any message actually is received.  Thus, there is no        *)
(* difference between a lost message and one that is never received.  The  *)
(* liveness property of the spec that we check makes it clear what         *)
(* messages must be received (and hence either not lost or successfully    *)
(* retransmitted if lost) to guarantee progress.                           *)
(***************************************************************************)
TypeOK == 
    /\ maxBal \in [Acceptor -> Ballot \cup {-1}]
    /\ maxVBal \in [Acceptor -> Ballot \cup {-1}]
    /\ maxVal \in [Acceptor -> Value \cup {None}]
    /\ msgs \subseteq Message
-----------------------------------------------------------------------------
Init == 
    /\ maxBal = [a \in Acceptor |-> -1]
    /\ maxVBal = [a \in Acceptor |-> -1]
    /\ maxVal = [a \in Acceptor |-> None]
    /\ msgs = {}
-----------------------------------------------------------------------------
(* 
In an implementation, there will be a leader process that orchestrates  
a ballot. The ballot b leader performs actions Phase1a(b) and Phase2a(b).
The Phase1a(b) action sends a phase 1a message that begins ballot b.                 
*)
Phase1a(b) == 
    /\ Send([type |-> "1a", bal |-> b])
    /\ UNCHANGED <<maxBal, maxVBal, maxVal>>
(* 
Upon receipt of a ballot b phase 1a message, acceptor a can perform a Phase1b(a) 
action only if b > maxBal[a]. The action sets maxBal[a] to b and sends a phase 1b 
message to the leader containing the values of maxVBal[a] and maxVal[a].                                               
*)
Phase1b(a) == 
    /\ \E m \in msgs : 
        /\ m.type = "1a"
        /\ m.bal > maxBal[a]
        /\ maxBal' = [maxBal EXCEPT ![a] = m.bal]   \* make promise
        \* /\ maxBal' = [maxBal EXCEPT ![a] = Max(m.bal, @)]
        /\ Send([type |-> "1b", acc |-> a, bal |-> m.bal,
                 mbal |-> maxVBal[a], mval |-> maxVal[a]])
    /\ UNCHANGED <<maxVBal, maxVal>>

NoBackInTime ==
    \A m \in msgs : m.type = "1b" => m.mbal < m.bal
(* 
The Phase2a(b, v) action can be performed by the ballot b leader if two 
conditions are satisfied: (i) it has not already performed a phase 2a   
action for ballot b and (ii) it has received ballot b phase 1b messages 
from some quorum Q from which it can deduce that the value v is safe at 
ballot b. These enabling conditions are the first two conjuncts in the 
definition of Phase2a(b, v). The second conjunct, expressing condition (ii), 
is the heart of the algorithm. To understand it, observe that the existence of 
a phase 1b message m in msgs implies that m.mbal is the highest ballot number 
less than m.bal in which acceptor m.acc has or ever will cast a vote, 
and that m.mval is the value it voted for in that ballot if m.mbal # -1.
It is not hard to deduce from this that the second conjunct implies that 
there exists a quorum Q such that ShowsSafeAt(Q, b, v) (where ShowsSafeAt is 
defined in module Voting).                                                                

The action sends a phase 2a message that tells any acceptor a that it can 
vote for v in ballot b, unless it has already set maxBal[a] greater than b 
(thereby promising not to vote in ballot b).             
*)
P2C(b, v) ==
    \E Q \in Quorum:
        LET Q2bv == {m \in msgs : m.type = "2b" /\ m.acc \in Q /\ m.bal < b}
        IN  \/ Q2bv = {}
            \/ \E m \in Q2bv : 
                  /\ m.val = v
                  /\ \A mm \in Q2bv : m.bal \geq mm.bal 

Phase2a(b, v) ==
  \* /\ ~ \E m \in msgs : m.type = "2a" /\ m.bal = b \* allow different values for the same b
  /\ \E Q \in Quorum :
        LET Q1b == {m \in msgs : m.type = "1b" /\ m.acc \in Q /\ m.bal = b}
           Q1bv == {m \in Q1b : m.mbal \geq 0}
        IN  /\ \A a \in Q : \E m \in Q1b : m.acc = a 
            /\ \/ Q1bv = {}
               \/ \E m \in Q1bv : 
                    /\ m.mval = v
                    /\ \A mm \in Q1bv : m.mbal \geq mm.mbal 
  /\ Send([type |-> "2a", bal |-> b, val |-> v])
  /\ Assert(P2C(b, v), "P2C Fails!")
  /\ UNCHANGED <<maxBal, maxVBal, maxVal>>
(*
The Phase2b(a) action is performed by acceptor a upon receipt of a phase 2a message.
Acceptor a can perform this action only if the message is for a ballot number 
greater than or equal to maxBal[a]. In that case, the acceptor votes as directed 
by the phase 2a message, setting maxBVal[a] and maxVal[a] to record that vote 
and sending a phase 2b message announcing its vote. 

Note: It also sets maxBal[a] to the message's ballot number.
Otherwise, 
(1) NoBackInTime for Phase1b does not hold.
(2) "Non-Increasing Error" assertion in Phase2b(a) fails.
(3) P2C assertion for Phase2a does not hold ???
*)
Phase2b(a) == 
    \E m \in msgs : 
      /\ m.type = "2a"
      \* /\ m.bal \geq maxBal[a]
      /\ \/ m.bal > maxBal[a]
         \/ m.bal = maxBal[a] /\ maxVal[a] = None \* write-once
      /\ maxBal' = [maxBal EXCEPT ![a] = m.bal]
      /\ maxVBal' = [maxVBal EXCEPT ![a] = m.bal] 
      /\ Assert(maxVBal'[a] >= maxVBal[a], "Non-Increasing Error!")
      /\ maxVal' = [maxVal EXCEPT ![a] = m.val]
      /\ Send([type |-> "2b", acc |-> a, bal |-> m.bal, val |-> m.val]) 
(* 
In an implementation, there will be learner processes that learn from the 
phase 2b messages if a value has been chosen. The learners are omitted from 
this abstract specification of the algorithm.
*)
----------------------------------------------------------------------------
Next == 
    \/ \E b \in Ballot : 
        \/ Phase1a(b)
        \/ \E v \in Value : Phase2a(b, v)
    \/ \E a \in Acceptor : Phase1b(a) \/ Phase2b(a)

Spec == Init /\ [][Next]_vars
----------------------------------------------------------------------------
(***************************************************************************)
(* We now define the refinement mapping under which this algorithm         *)
(* implements the specification in module Voting.                          *)
(***************************************************************************)

(***************************************************************************)
(* As we observed, votes are registered by sending phase 2b messages.  So  *)
(* the array `votes' describing the votes cast by the acceptors is defined *)
(* as follows.                                                             *)
(***************************************************************************)
votes == [a \in Acceptor |->  
           {<<m.bal, m.val>> : m \in {mm \in msgs: /\ mm.type = "2b"
                                                   /\ mm.acc = a }}]
(* 
We now instantiate module Voting, substituting the constants Value, Acceptor, 
and Quorum declared in this module for the corresponding constants of that module Voting, 
and substituting the variable maxBal and the defined state function `votes' 
for the correspondingly-named variables of module Voting.
*)
V == INSTANCE Voting

Consistency == V!C!Inv  \* Only about "chosen": TypeOK /\ Cardinality(chosen) <= 1
StrongConsistency == V!Inv \* TypeOK /\ VotesSafe /\ OneValuePerBallot

THEOREM Spec => V!Spec
-----------------------------------------------------------------------------
(***************************************************************************)
(* Here is a first attempt at an inductive invariant used to prove this    *)
(* theorem.                                                                *)
(***************************************************************************)
Inv == /\ TypeOK
       /\ \A a \in Acceptor : IF maxVBal[a] = -1
                                THEN maxVal[a] = None
                                ELSE <<maxVBal[a], maxVal[a]>> \in votes[a]
       /\ \A m \in msgs : 
             /\ (m.type = "1b") => /\ maxBal[m.acc] \geq m.bal
                                   /\ (m.mbal \geq 0) =>  
                                       <<m.mbal, m.mval>> \in votes[m.acc]
             /\ (m.type = "2a") => /\ \E Q \in Quorum : 
                                         V!ShowsSafeAt(Q, m.bal, m.val)
                                   /\ \A mm \in msgs : /\ mm.type = "2a"
                                                       /\ mm.bal = m.bal
                                                       => mm.val = m.val
       /\ V!Inv
============================================================================