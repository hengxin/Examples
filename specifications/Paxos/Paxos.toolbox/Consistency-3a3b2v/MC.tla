---- MODULE MC ----
EXTENDS Paxos, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a, b, c
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
v1, v2
----

\* MV CONSTANT definitions Acceptor
const_1564467755014122000 == 
{a, b, c}
----

\* MV CONSTANT definitions Value
const_1564467755014123000 == 
{v1, v2}
----

\* SYMMETRY definition
symm_1564467755014124000 == 
Permutations(const_1564467755014122000) \union Permutations(const_1564467755014123000)
----

\* CONSTANT definitions @modelParameterConstants:1Quorum
const_1564467755014125000 == 
{{a, b}, {a, c}, {b, c}, {a, b, c}}
----

\* CONSTANT definition @modelParameterDefinitions:1
def_ov_1564467755014127000 ==
0 .. 2
----
=============================================================================
\* Modification History
\* Created Tue Jul 30 14:22:35 CST 2019 by hengxin
