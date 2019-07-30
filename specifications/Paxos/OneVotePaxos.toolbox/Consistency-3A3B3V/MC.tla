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
const_1564471246870214000 == 
{a1, a2, a3}
----

\* MV CONSTANT definitions Value
const_1564471246870215000 == 
{v1, v2, v3}
----

\* SYMMETRY definition
symm_1564471246870216000 == 
Permutations(const_1564471246870214000) \union Permutations(const_1564471246870215000)
----

\* CONSTANT definitions @modelParameterConstants:1Quorum
const_1564471246870217000 == 
{{a1, a2}, {a1, a3}, {a2, a3}, {a1, a2, a3}}
----

\* CONSTANT definition @modelParameterDefinitions:1
def_ov_1564471246870219000 ==
0 .. 2
----
=============================================================================
\* Modification History
\* Created Tue Jul 30 15:20:46 CST 2019 by hengxin
