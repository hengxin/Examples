\* :1:__trace_var_156464472728326000:votes"$!@$!@$!@$!@$!"
\* :1:__trace_var_156464472728328000:V!chosen"$!@$!@$!@$!@$!"
---- MODULE TE ----
EXTENDS OneVotePaxos, TLC, Integers

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a1, a2, a3
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
v1, v2
----

\* MV CONSTANT definitions Acceptor
const_156464472733931000 == 
{a1, a2, a3}
----

\* MV CONSTANT definitions Value
const_156464472733932000 == 
{v1, v2}
----

\* CONSTANT definitions @modelParameterConstants:1Quorum
const_156464472733933000 == 
{{a1, a2}, {a1, a3}, {a2, a3}, {a1, a2, a3}}
----

\* CONSTANT definition @modelParameterDefinitions:1
def_ov_156464472733935000 ==
0 .. 1
----
\* TRACE EXPLORER identifier definition @_TETrace
_TETrace ==
<<
([ maxVal |-> (a1 :> None @@ a2 :> None @@ a3 :> None), maxVBal |-> (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1), msgs |-> {}, maxBal |-> (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)]),
([ maxVal |-> (a1 :> None @@ a2 :> None @@ a3 :> None), maxVBal |-> (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1), msgs |-> {[type |-> "1a", bal |-> 0]}, maxBal |-> (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)]),
([ maxVal |-> (a1 :> None @@ a2 :> None @@ a3 :> None), maxVBal |-> (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1), msgs |-> {[type |-> "1a", bal |-> 0], [type |-> "1a", bal |-> 1]}, maxBal |-> (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)]),
([ maxVal |-> (a1 :> None @@ a2 :> None @@ a3 :> None), maxVBal |-> (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1), msgs |-> { [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None] }, maxBal |-> (a1 :> 0 @@ a2 :> -1 @@ a3 :> -1)]),
([ maxVal |-> (a1 :> None @@ a2 :> None @@ a3 :> None), maxVBal |-> (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1), msgs |-> { [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }, maxBal |-> (a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)]),
([ maxVal |-> (a1 :> None @@ a2 :> None @@ a3 :> None), maxVBal |-> (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1), msgs |-> { [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }, maxBal |-> (a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)]),
([ maxVal |-> (a1 :> None @@ a2 :> None @@ a3 :> None), maxVBal |-> (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1), msgs |-> { [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }, maxBal |-> (a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)]),
([ maxVal |-> (a1 :> v1 @@ a2 :> None @@ a3 :> None), maxVBal |-> (a1 :> 0 @@ a2 :> -1 @@ a3 :> -1), msgs |-> { [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }, maxBal |-> (a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)]),
([ maxVal |-> (a1 :> v1 @@ a2 :> None @@ a3 :> None), maxVBal |-> (a1 :> 0 @@ a2 :> -1 @@ a3 :> -1), msgs |-> { [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1] }, maxBal |-> (a1 :> 1 @@ a2 :> 0 @@ a3 :> -1)]),
([ maxVal |-> (a1 :> v1 @@ a2 :> v1 @@ a3 :> None), maxVBal |-> (a1 :> 0 @@ a2 :> 0 @@ a3 :> -1), msgs |-> { [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1] }, maxBal |-> (a1 :> 1 @@ a2 :> 0 @@ a3 :> -1)]),
([ maxVal |-> (a1 :> v1 @@ a2 :> v1 @@ a3 :> v2), maxVBal |-> (a1 :> 0 @@ a2 :> 0 @@ a3 :> 0), msgs |-> { [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a3, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1] }, maxBal |-> (a1 :> 1 @@ a2 :> 0 @@ a3 :> 0)]),
([ maxVal |-> (a1 :> v1 @@ a2 :> v1 @@ a3 :> v2), maxVBal |-> (a1 :> 0 @@ a2 :> 0 @@ a3 :> 0), msgs |-> { [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a3, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1],
  [type |-> "1b", bal |-> 1, acc |-> a3, mbal |-> 0, mval |-> v2] }, maxBal |-> (a1 :> 1 @@ a2 :> 0 @@ a3 :> 1)]),
([ maxVal |-> (a1 :> v1 @@ a2 :> v1 @@ a3 :> v2), maxVBal |-> (a1 :> 0 @@ a2 :> 0 @@ a3 :> 0), msgs |-> { [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2a", bal |-> 1, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a3, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1],
  [type |-> "1b", bal |-> 1, acc |-> a3, mbal |-> 0, mval |-> v2] }, maxBal |-> (a1 :> 1 @@ a2 :> 0 @@ a3 :> 1)]),
([ maxVal |-> (a1 :> v2 @@ a2 :> v1 @@ a3 :> v2), maxVBal |-> (a1 :> 1 @@ a2 :> 0 @@ a3 :> 0), msgs |-> { [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2a", bal |-> 1, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a3, val |-> v2],
  [type |-> "2b", bal |-> 1, acc |-> a1, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1],
  [type |-> "1b", bal |-> 1, acc |-> a3, mbal |-> 0, mval |-> v2] }, maxBal |-> (a1 :> 1 @@ a2 :> 0 @@ a3 :> 1)]),
([ maxVal |-> (a1 :> v2 @@ a2 :> v2 @@ a3 :> v2), maxVBal |-> (a1 :> 1 @@ a2 :> 1 @@ a3 :> 0), msgs |-> { [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2a", bal |-> 1, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a3, val |-> v2],
  [type |-> "2b", bal |-> 1, acc |-> a1, val |-> v2],
  [type |-> "2b", bal |-> 1, acc |-> a2, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1],
  [type |-> "1b", bal |-> 1, acc |-> a3, mbal |-> 0, mval |-> v2] }, maxBal |-> (a1 :> 1 @@ a2 :> 1 @@ a3 :> 1)])
>>
----

\* TRACE EXPLORER Position identifier definition @_TEPosition
_TEPosition ==
IF TLCGet("level") >= 15 THEN 15 ELSE TLCGet("level") + 1
----

\* TRACE EXPLORER variable declaration @traceExploreExpressions
VARIABLES __trace_var_156464472728326000,__trace_var_156464472728328000
----

\* TRACE INIT definitiontraceExploreInit
init_156464472728329000 ==
 maxVal = (
(a1 :> None @@ a2 :> None @@ a3 :> None)
)/\
 maxVBal = (
(a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
)/\
 msgs = (
{}
)/\
 maxBal = (
(a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
)/\
__trace_var_156464472728326000 = (
votes
)/\
__trace_var_156464472728328000 = (
V!chosen
)
----

\* TRACE NEXT definitiontraceExploreNext
next_156464472728330000 ==
( maxVal = (
(a1 :> None @@ a2 :> None @@ a3 :> None)
)/\
 maxVBal = (
(a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
)/\
 msgs = (
{}
)/\
 maxBal = (
(a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
)/\
 maxVal' = (
(a1 :> None @@ a2 :> None @@ a3 :> None)
)/\
 maxVBal' = (
(a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
)/\
 msgs' = (
{[type |-> "1a", bal |-> 0]}
)/\
 maxBal' = (
(a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
)/\
__trace_var_156464472728326000' = (
votes
)'/\
__trace_var_156464472728328000' = (
V!chosen
)')
\/
( maxVal = (
(a1 :> None @@ a2 :> None @@ a3 :> None)
)/\
 maxVBal = (
(a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
)/\
 msgs = (
{[type |-> "1a", bal |-> 0]}
)/\
 maxBal = (
(a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
)/\
 maxVal' = (
(a1 :> None @@ a2 :> None @@ a3 :> None)
)/\
 maxVBal' = (
(a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
)/\
 msgs' = (
{[type |-> "1a", bal |-> 0], [type |-> "1a", bal |-> 1]}
)/\
 maxBal' = (
(a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
)/\
__trace_var_156464472728326000' = (
votes
)'/\
__trace_var_156464472728328000' = (
V!chosen
)')
\/
( maxVal = (
(a1 :> None @@ a2 :> None @@ a3 :> None)
)/\
 maxVBal = (
(a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
)/\
 msgs = (
{[type |-> "1a", bal |-> 0], [type |-> "1a", bal |-> 1]}
)/\
 maxBal = (
(a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
)/\
 maxVal' = (
(a1 :> None @@ a2 :> None @@ a3 :> None)
)/\
 maxVBal' = (
(a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
)/\
 msgs' = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None] }
)/\
 maxBal' = (
(a1 :> 0 @@ a2 :> -1 @@ a3 :> -1)
)/\
__trace_var_156464472728326000' = (
votes
)'/\
__trace_var_156464472728328000' = (
V!chosen
)')
\/
( maxVal = (
(a1 :> None @@ a2 :> None @@ a3 :> None)
)/\
 maxVBal = (
(a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
)/\
 msgs = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None] }
)/\
 maxBal = (
(a1 :> 0 @@ a2 :> -1 @@ a3 :> -1)
)/\
 maxVal' = (
(a1 :> None @@ a2 :> None @@ a3 :> None)
)/\
 maxVBal' = (
(a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
)/\
 msgs' = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }
)/\
 maxBal' = (
(a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)
)/\
__trace_var_156464472728326000' = (
votes
)'/\
__trace_var_156464472728328000' = (
V!chosen
)')
\/
( maxVal = (
(a1 :> None @@ a2 :> None @@ a3 :> None)
)/\
 maxVBal = (
(a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
)/\
 msgs = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }
)/\
 maxBal = (
(a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)
)/\
 maxVal' = (
(a1 :> None @@ a2 :> None @@ a3 :> None)
)/\
 maxVBal' = (
(a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
)/\
 msgs' = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }
)/\
 maxBal' = (
(a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)
)/\
__trace_var_156464472728326000' = (
votes
)'/\
__trace_var_156464472728328000' = (
V!chosen
)')
\/
( maxVal = (
(a1 :> None @@ a2 :> None @@ a3 :> None)
)/\
 maxVBal = (
(a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
)/\
 msgs = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }
)/\
 maxBal = (
(a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)
)/\
 maxVal' = (
(a1 :> None @@ a2 :> None @@ a3 :> None)
)/\
 maxVBal' = (
(a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
)/\
 msgs' = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }
)/\
 maxBal' = (
(a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)
)/\
__trace_var_156464472728326000' = (
votes
)'/\
__trace_var_156464472728328000' = (
V!chosen
)')
\/
( maxVal = (
(a1 :> None @@ a2 :> None @@ a3 :> None)
)/\
 maxVBal = (
(a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
)/\
 msgs = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }
)/\
 maxBal = (
(a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)
)/\
 maxVal' = (
(a1 :> v1 @@ a2 :> None @@ a3 :> None)
)/\
 maxVBal' = (
(a1 :> 0 @@ a2 :> -1 @@ a3 :> -1)
)/\
 msgs' = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }
)/\
 maxBal' = (
(a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)
)/\
__trace_var_156464472728326000' = (
votes
)'/\
__trace_var_156464472728328000' = (
V!chosen
)')
\/
( maxVal = (
(a1 :> v1 @@ a2 :> None @@ a3 :> None)
)/\
 maxVBal = (
(a1 :> 0 @@ a2 :> -1 @@ a3 :> -1)
)/\
 msgs = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }
)/\
 maxBal = (
(a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)
)/\
 maxVal' = (
(a1 :> v1 @@ a2 :> None @@ a3 :> None)
)/\
 maxVBal' = (
(a1 :> 0 @@ a2 :> -1 @@ a3 :> -1)
)/\
 msgs' = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1] }
)/\
 maxBal' = (
(a1 :> 1 @@ a2 :> 0 @@ a3 :> -1)
)/\
__trace_var_156464472728326000' = (
votes
)'/\
__trace_var_156464472728328000' = (
V!chosen
)')
\/
( maxVal = (
(a1 :> v1 @@ a2 :> None @@ a3 :> None)
)/\
 maxVBal = (
(a1 :> 0 @@ a2 :> -1 @@ a3 :> -1)
)/\
 msgs = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1] }
)/\
 maxBal = (
(a1 :> 1 @@ a2 :> 0 @@ a3 :> -1)
)/\
 maxVal' = (
(a1 :> v1 @@ a2 :> v1 @@ a3 :> None)
)/\
 maxVBal' = (
(a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)
)/\
 msgs' = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1] }
)/\
 maxBal' = (
(a1 :> 1 @@ a2 :> 0 @@ a3 :> -1)
)/\
__trace_var_156464472728326000' = (
votes
)'/\
__trace_var_156464472728328000' = (
V!chosen
)')
\/
( maxVal = (
(a1 :> v1 @@ a2 :> v1 @@ a3 :> None)
)/\
 maxVBal = (
(a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)
)/\
 msgs = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1] }
)/\
 maxBal = (
(a1 :> 1 @@ a2 :> 0 @@ a3 :> -1)
)/\
 maxVal' = (
(a1 :> v1 @@ a2 :> v1 @@ a3 :> v2)
)/\
 maxVBal' = (
(a1 :> 0 @@ a2 :> 0 @@ a3 :> 0)
)/\
 msgs' = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a3, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1] }
)/\
 maxBal' = (
(a1 :> 1 @@ a2 :> 0 @@ a3 :> 0)
)/\
__trace_var_156464472728326000' = (
votes
)'/\
__trace_var_156464472728328000' = (
V!chosen
)')
\/
( maxVal = (
(a1 :> v1 @@ a2 :> v1 @@ a3 :> v2)
)/\
 maxVBal = (
(a1 :> 0 @@ a2 :> 0 @@ a3 :> 0)
)/\
 msgs = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a3, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1] }
)/\
 maxBal = (
(a1 :> 1 @@ a2 :> 0 @@ a3 :> 0)
)/\
 maxVal' = (
(a1 :> v1 @@ a2 :> v1 @@ a3 :> v2)
)/\
 maxVBal' = (
(a1 :> 0 @@ a2 :> 0 @@ a3 :> 0)
)/\
 msgs' = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a3, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1],
  [type |-> "1b", bal |-> 1, acc |-> a3, mbal |-> 0, mval |-> v2] }
)/\
 maxBal' = (
(a1 :> 1 @@ a2 :> 0 @@ a3 :> 1)
)/\
__trace_var_156464472728326000' = (
votes
)'/\
__trace_var_156464472728328000' = (
V!chosen
)')
\/
( maxVal = (
(a1 :> v1 @@ a2 :> v1 @@ a3 :> v2)
)/\
 maxVBal = (
(a1 :> 0 @@ a2 :> 0 @@ a3 :> 0)
)/\
 msgs = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a3, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1],
  [type |-> "1b", bal |-> 1, acc |-> a3, mbal |-> 0, mval |-> v2] }
)/\
 maxBal = (
(a1 :> 1 @@ a2 :> 0 @@ a3 :> 1)
)/\
 maxVal' = (
(a1 :> v1 @@ a2 :> v1 @@ a3 :> v2)
)/\
 maxVBal' = (
(a1 :> 0 @@ a2 :> 0 @@ a3 :> 0)
)/\
 msgs' = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2a", bal |-> 1, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a3, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1],
  [type |-> "1b", bal |-> 1, acc |-> a3, mbal |-> 0, mval |-> v2] }
)/\
 maxBal' = (
(a1 :> 1 @@ a2 :> 0 @@ a3 :> 1)
)/\
__trace_var_156464472728326000' = (
votes
)'/\
__trace_var_156464472728328000' = (
V!chosen
)')
\/
( maxVal = (
(a1 :> v1 @@ a2 :> v1 @@ a3 :> v2)
)/\
 maxVBal = (
(a1 :> 0 @@ a2 :> 0 @@ a3 :> 0)
)/\
 msgs = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2a", bal |-> 1, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a3, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1],
  [type |-> "1b", bal |-> 1, acc |-> a3, mbal |-> 0, mval |-> v2] }
)/\
 maxBal = (
(a1 :> 1 @@ a2 :> 0 @@ a3 :> 1)
)/\
 maxVal' = (
(a1 :> v2 @@ a2 :> v1 @@ a3 :> v2)
)/\
 maxVBal' = (
(a1 :> 1 @@ a2 :> 0 @@ a3 :> 0)
)/\
 msgs' = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2a", bal |-> 1, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a3, val |-> v2],
  [type |-> "2b", bal |-> 1, acc |-> a1, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1],
  [type |-> "1b", bal |-> 1, acc |-> a3, mbal |-> 0, mval |-> v2] }
)/\
 maxBal' = (
(a1 :> 1 @@ a2 :> 0 @@ a3 :> 1)
)/\
__trace_var_156464472728326000' = (
votes
)'/\
__trace_var_156464472728328000' = (
V!chosen
)')
\/
( maxVal = (
(a1 :> v2 @@ a2 :> v1 @@ a3 :> v2)
)/\
 maxVBal = (
(a1 :> 1 @@ a2 :> 0 @@ a3 :> 0)
)/\
 msgs = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2a", bal |-> 1, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a3, val |-> v2],
  [type |-> "2b", bal |-> 1, acc |-> a1, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1],
  [type |-> "1b", bal |-> 1, acc |-> a3, mbal |-> 0, mval |-> v2] }
)/\
 maxBal = (
(a1 :> 1 @@ a2 :> 0 @@ a3 :> 1)
)/\
 maxVal' = (
(a1 :> v2 @@ a2 :> v2 @@ a3 :> v2)
)/\
 maxVBal' = (
(a1 :> 1 @@ a2 :> 1 @@ a3 :> 0)
)/\
 msgs' = (
{ [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2a", bal |-> 1, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a3, val |-> v2],
  [type |-> "2b", bal |-> 1, acc |-> a1, val |-> v2],
  [type |-> "2b", bal |-> 1, acc |-> a2, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1],
  [type |-> "1b", bal |-> 1, acc |-> a3, mbal |-> 0, mval |-> v2] }
)/\
 maxBal' = (
(a1 :> 1 @@ a2 :> 1 @@ a3 :> 1)
)/\
__trace_var_156464472728326000' = (
votes
)'/\
__trace_var_156464472728328000' = (
V!chosen
)')
----

=============================================================================
\* Modification History
\* Created Thu Aug 01 15:32:07 CST 2019 by hengxin
