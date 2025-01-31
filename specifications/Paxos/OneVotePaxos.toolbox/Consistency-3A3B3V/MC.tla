---- MODULE MC ----
EXTENDS OneVotePaxos, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a1, a2, a3
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
v1, v2, v3
----

\* MV CONSTANT definitions Acceptor
const_1564559941399263000 == 
{a1, a2, a3}
----

\* MV CONSTANT definitions Value
const_1564559941399264000 == 
{v1, v2, v3}
----

\* SYMMETRY definition
symm_1564559941399265000 == 
Permutations(const_1564559941399263000) \union Permutations(const_1564559941399264000)
----

\* CONSTANT definitions @modelParameterConstants:1Quorum
const_1564559941399266000 == 
{{a1, a2}, {a1, a3}, {a2, a3}, {a1, a2, a3}}
----

\* CONSTANT definition @modelParameterDefinitions:1
def_ov_1564559941399268000 ==
0 .. 2
----
=============================================================================
\* Modification History
\* Created Wed Jul 31 15:59:01 CST 2019 by hengxin
