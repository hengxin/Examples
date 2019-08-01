---- MODULE MC ----
EXTENDS OneVotePaxos, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a1, a2, a3
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
v1, v2
----

\* MV CONSTANT definitions Acceptor
const_156464467535214000 == 
{a1, a2, a3}
----

\* MV CONSTANT definitions Value
const_156464467535315000 == 
{v1, v2}
----

\* CONSTANT definitions @modelParameterConstants:1Quorum
const_156464467535316000 == 
{{a1, a2}, {a1, a3}, {a2, a3}, {a1, a2, a3}}
----

\* CONSTANT definition @modelParameterDefinitions:1
def_ov_156464467535318000 ==
0 .. 1
----
=============================================================================
\* Modification History
\* Created Thu Aug 01 15:31:15 CST 2019 by hengxin
