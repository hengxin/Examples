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
const_1563170023494423000 == 
{a, b, c}
----

\* MV CONSTANT definitions Value
const_1563170023494424000 == 
{v1, v2}
----

\* SYMMETRY definition
symm_1563170023494425000 == 
Permutations(const_1563170023494423000) \union Permutations(const_1563170023494424000)
----

\* CONSTANT definitions @modelParameterConstants:1Quorum
const_1563170023494426000 == 
{{a, b}, {a, c}, {b, c}, {a, b, c}}
----

\* CONSTANT definition @modelParameterDefinitions:1
def_ov_1563170023494428000 ==
0 .. 2
----
=============================================================================
\* Modification History
\* Created Mon Jul 15 13:53:43 CST 2019 by hengxin
