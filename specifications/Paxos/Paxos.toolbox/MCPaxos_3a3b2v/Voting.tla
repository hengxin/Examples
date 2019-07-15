------------------------------- MODULE Voting ------------------------------- 
(***************************************************************************)
(* This is a high-level algorithm in which a set of processes              *)
(* cooperatively choose a value.                                           *)
(***************************************************************************)
EXTENDS Integers 
-----------------------------------------------------------------------------
CONSTANTS 
    Value,     \* The set of choosable values.
    Acceptor,  \* A set of processes that will choose a value.
    Quorum     \* The set of "quorums", where a "quorum" is a "large enough" set of acceptors.

ASSUME QuorumAssumption == 
    /\ \A Q \in Quorum : Q \subseteq Acceptor
    /\ \A Q1, Q2 \in Quorum : Q1 \cap Q2 # {}  

THEOREM QuorumNonEmpty == \A Q \in Quorum : Q # {}
-----------------------------------------------------------------------------
Ballot == Nat \* The set of "ballot numbers".
-----------------------------------------------------------------------------
(* 
Each acceptor can cast one or more votes, 
where each vote cast by an acceptor has the form <<b, v>> 
indicating that the acceptor has voted for value v in ballot b.
*)
VARIABLES
    votes,  \* votes[a]: the set of votes cast by acceptor a
    maxBal  \* maxBal[a]: a ballot number. 
            \* Acceptor a will cast further votes only in ballots numbered \geq maxBal[a].

TypeOK == 
    /\votes \in [Acceptor -> SUBSET (Ballot \X Value)]
    /\maxBal \in [Acceptor -> Ballot \cup {-1}]
-----------------------------------------------------------------------------
VotedFor(a, b, v) == <<b, v>> \in votes[a] \* Acceptor a has voted for v in ballot b.

ChosenAt(b, v) == \* <<b, v>> is chosen if a quorum of acceptors have voted for it.
    \E Q \in Quorum:
        \A a \in Q: VotedFor(a, b, v)

chosen == \* The set of values that have been chosen.
    {v \in Value: \E b \in Ballot: ChosenAt(b, v)}  
-----------------------------------------------------------------------------
DidNotVoteAt(a, b) == \* The acceptor a did not vote (for any value) at ballot b.
    \A v \in Value : ~ VotedFor(a, b, v) 

CannotVoteAt(a, b) == \* The acceptor a cannot vote (for any value) at ballot b.
    /\ DidNotVoteAt(a, b)
    /\ maxBal[a] > b

NoneOtherChoosableAt(b, v) == \* ChosenAt(b, w) is not and can never become true for any w # v.
    \E Q \in Quorum : 
        \A a \in Q : VotedFor(a, b, v) \/ CannotVoteAt(a, b)

THEOREM ChoosableThm ==
          \A b \in Ballot, v \in Value : 
             ChosenAt(b, v) => NoneOtherChoosableAt(b, v)
-----------------------------------------------------------------------------
SafeAt(b, v) == \* No value other than v has been or can ever be chosen in any ballot < b. 
    \A c \in 0..(b-1) : NoneOtherChoosableAt(c, v)

THEOREM AllSafeAtZero == \A v \in Value : SafeAt(0, v)
-----------------------------------------------------------------------------
OneVote == \A a \in Acceptor, b \in Ballot, v, w \in Value : 
              VotedFor(a, b, v) /\ VotedFor(a, b, w) => (v = w)

OneValuePerBallot ==  
    \A a1, a2 \in Acceptor, b \in Ballot, v1, v2 \in Value : 
       VotedFor(a1, b, v1) /\ VotedFor(a2, b, v2) => (v1 = v2)

THEOREM OneValuePerBallot => OneVote
-----------------------------------------------------------------------------
VotesSafe == \A a \in Acceptor, b \in Ballot, v \in Value :
                 VotedFor(a, b, v) => SafeAt(b, v)

THEOREM VotesSafeImpliesConsistency ==
          /\ TypeOK 
          /\ VotesSafe
          /\ OneVote
          => \/ chosen = {}
             \/ \E v \in Value : chosen = {v}
-----------------------------------------------------------------------------
ShowsSafeAt(Q, b, v) == 
    /\ \A a \in Q : maxBal[a] \geq b
    /\ \E c \in-1 .. (b-1) : 
        /\ (c # -1) => \E a \in Q : VotedFor(a, c, v)
        /\ \A d \in (c+1)..(b-1), a \in Q : DidNotVoteAt(a, d)

THEOREM ShowsSafety == 
          TypeOK /\ VotesSafe /\ OneValuePerBallot =>
             \A Q \in Quorum, b \in Ballot, v \in Value :
               ShowsSafeAt(Q, b, v) => SafeAt(b, v)
-----------------------------------------------------------------------------
Init == 
    /\ votes = [a \in Acceptor |-> {}]
    /\ maxBal = [a \in Acceptor |-> -1]

IncreaseMaxBal(a, b) == \* Acceptor a is allowed ot increase maxBal[a] to a ballot number. 
    /\ b > maxBal[a]
    /\ maxBal' = [maxBal EXCEPT ![a] = b]
    /\ UNCHANGED votes

VoteFor(a, b, v) == \* Acceptor a votes for v in ballot b.
    /\ maxBal[a] \leq b \* The acceptor cannot cast a vote in a ballot less than maxBal[a]
    /\ \A vt \in votes[a] : vt[1] # b \* to maintain OneValuePerBallot
    /\ \A c \in Acceptor \ {a} : 
         \A vt \in votes[c] : (vt[1] = b) => (vt[2] = v)
    /\ \E Q \in Quorum : ShowsSafeAt(Q, b, v)   \*  to maintain VotesSafe
    /\ votes' = [votes EXCEPT ![a] = @ \cup {<<b, v>>}]
    /\ maxBal' = [maxBal EXCEPT ![a] = b]
-----------------------------------------------------------------------------
Next == 
    \E a \in Acceptor, b \in Ballot : 
        \/ IncreaseMaxBal(a, b)
        \/ \E v \in Value : VoteFor(a, b, v)

Spec == Init /\ [][Next]_<<votes, maxBal>>
-----------------------------------------------------------------------------
Inv == TypeOK /\ VotesSafe /\ OneValuePerBallot

THEOREM Invariance == Spec => []Inv
-----------------------------------------------------------------------------
C == INSTANCE Consensus \* WITH Value <- Value, chosen <- chosen

THEOREM Spec => C!Spec 
<1>1. Inv /\ Init => C!Init
<1>2. Inv /\ [Next]_<<votes, maxBal>> => [C!Next]_chosen
<1>3. QED
  <2>1. []Inv /\ [][Next]_<<votes, maxBal>> => [][C!Next]_chosen
    BY <1>2 \* and temporal reasoning
  <2>2. []Inv /\ Spec => C!Spec
    BY <2>1, <1>1
  <2>3. QED
    BY <2>2, Invariance
=============================================================================

