----------------------------- MODULE Consensus ------------------------------ 
EXTENDS Naturals, FiniteSets
-----------------------------------------------------------------------------
CONSTANT Value  \* the set of all values that can be chosen
-----------------------------------------------------------------------------
VARIABLE chosen \* the set of all values that have been chosen

TypeOK == 
    /\ IsFiniteSet(chosen)
    /\ chosen \subseteq Value
-----------------------------------------------------------------------------
Init == chosen = {}

Next == 
    /\ chosen = {}
    /\ \E v \in Value : chosen' = {v}
-----------------------------------------------------------------------------
Spec == Init /\ [][Next]_chosen 
-----------------------------------------------------------------------------
Inv == 
    /\ TypeOK
    /\ Cardinality(chosen) \leq 1 \* Safety: at most one value is chosen

THEOREM Invariance == Spec => []Inv
<1>1. Init => Inv
<1>2. Inv /\ [Next]_chosen => Inv'
<1>3. QED
  <2>1. Inv /\ [][Next]_chosen => []Inv
    BY <1>2 \* and a TLA proof rule
  <2>2. QED
    BY <1>1, <2>1  \* and simple logic
-----------------------------------------------------------------------------
Success == <>(chosen # {}) \* Liveness: a value is eventually chosen
LiveSpec == Spec /\ WF_chosen(Next)  

THEOREM LivenessTheorem == LiveSpec =>  Success
=============================================================================
