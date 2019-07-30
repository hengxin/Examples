---- MODULE MC ----
EXTENDS Paxos, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a, b, c, d
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
v1, v2
----

\* MV CONSTANT definitions Acceptor
const_1563170063455430000 == 
{a, b, c, d}
----

\* MV CONSTANT definitions Value
const_1563170063455431000 == 
{v1, v2}
----

\* SYMMETRY definition
symm_1563170063455432000 == 
Permutations(const_1563170063455430000) \union Permutations(const_1563170063455431000)
----

\* CONSTANT definitions @modelParameterConstants:1Quorum
const_1563170063455433000 == 
{{a, b, c}, {a, b, d}, {a, c, d}, {b, c, d}, {a, b, c, d}}
----

\* CONSTANT definition @modelParameterDefinitions:1
def_ov_1563170063455435000 ==
0 .. 2
----
=============================================================================
\* Modification History
\* Created Mon Jul 15 13:54:23 CST 2019 by hengxin
