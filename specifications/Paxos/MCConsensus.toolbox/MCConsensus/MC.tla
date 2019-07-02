---- MODULE MC ----
EXTENDS Consensus, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a, b, c
----

\* MV CONSTANT definitions Value
const_15620526826815000 == 
{a, b, c}
----

\* SYMMETRY definition
symm_15620526826816000 == 
Permutations(const_15620526826815000)
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15620526826817000 ==
Spec
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_15620526826818000 ==
Inv
----
=============================================================================
\* Modification History
\* Created Tue Jul 02 15:31:22 CST 2019 by hengxin
