---- MODULE MC ----
EXTENDS Voting, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a, b, c
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
v1, v2
----

\* MV CONSTANT definitions Acceptor
const_156205580265788000 == 
{a, b, c}
----

\* MV CONSTANT definitions Value
const_156205580265789000 == 
{v1, v2}
----

\* SYMMETRY definition
symm_156205580265790000 == 
Permutations(const_156205580265788000) \union Permutations(const_156205580265789000)
----

\* CONSTANT definitions @modelParameterConstants:2Quorum
const_156205580265791000 == 
{{a, b}, {a, c}, {b, c}, {a, b, c}}
----

\* CONSTANT definition @modelParameterDefinitions:0
def_ov_156205580265792000 ==
0 .. 1
----
\* SPECIFICATION definition @modelBehaviorSpec:0
spec_156205580265793000 ==
Spec
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_156205580265794000 ==
Inv
----
\* INVARIANT definition @modelCorrectnessInvariants:1
inv_156205580265795000 ==
ChoosableThm
----
=============================================================================
\* Modification History
\* Created Tue Jul 02 16:23:22 CST 2019 by hengxin
