1: <Initial predicate>
/\ __trace_var_156464472728328000 = {}
/\ maxVal = (a1 :> None @@ a2 :> None @@ a3 :> None)
/\ maxVBal = (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
/\ __trace_var_156464472728326000 = (a1 :> {} @@ a2 :> {} @@ a3 :> {})
/\ msgs = {}
/\ maxBal = (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@
2: <next_156464472728330000 line 179, col 3 to line 208, col 2 of module TE>
/\ __trace_var_156464472728328000 = {}
/\ maxVal = (a1 :> None @@ a2 :> None @@ a3 :> None)
/\ maxVBal = (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
/\ __trace_var_156464472728326000 = (a1 :> {} @@ a2 :> {} @@ a3 :> {})
/\ msgs = {[type |-> "1a", bal |-> 0]}
/\ maxBal = (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@
3: <next_156464472728330000 line 210, col 3 to line 239, col 2 of module TE>
/\ __trace_var_156464472728328000 = {}
/\ maxVal = (a1 :> None @@ a2 :> None @@ a3 :> None)
/\ maxVBal = (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
/\ __trace_var_156464472728326000 = (a1 :> {} @@ a2 :> {} @@ a3 :> {})
/\ msgs = {[type |-> "1a", bal |-> 0], [type |-> "1a", bal |-> 1]}
/\ maxBal = (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@
4: <next_156464472728330000 line 241, col 3 to line 272, col 2 of module TE>
/\ __trace_var_156464472728328000 = {}
/\ maxVal = (a1 :> None @@ a2 :> None @@ a3 :> None)
/\ maxVBal = (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
/\ __trace_var_156464472728326000 = (a1 :> {} @@ a2 :> {} @@ a3 :> {})
/\ msgs = { [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None] }
/\ maxBal = (a1 :> 0 @@ a2 :> -1 @@ a3 :> -1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@
5: <next_156464472728330000 line 274, col 3 to line 308, col 2 of module TE>
/\ __trace_var_156464472728328000 = {}
/\ maxVal = (a1 :> None @@ a2 :> None @@ a3 :> None)
/\ maxVBal = (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
/\ __trace_var_156464472728326000 = (a1 :> {} @@ a2 :> {} @@ a3 :> {})
/\ msgs = { [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }
/\ maxBal = (a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@
6: <next_156464472728330000 line 310, col 3 to line 346, col 2 of module TE>
/\ __trace_var_156464472728328000 = {}
/\ maxVal = (a1 :> None @@ a2 :> None @@ a3 :> None)
/\ maxVBal = (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
/\ __trace_var_156464472728326000 = (a1 :> {} @@ a2 :> {} @@ a3 :> {})
/\ msgs = { [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }
/\ maxBal = (a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@
7: <next_156464472728330000 line 348, col 3 to line 386, col 2 of module TE>
/\ __trace_var_156464472728328000 = {}
/\ maxVal = (a1 :> None @@ a2 :> None @@ a3 :> None)
/\ maxVBal = (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
/\ __trace_var_156464472728326000 = (a1 :> {} @@ a2 :> {} @@ a3 :> {})
/\ msgs = { [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }
/\ maxBal = (a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@
8: <next_156464472728330000 line 388, col 3 to line 428, col 2 of module TE>
/\ __trace_var_156464472728328000 = {}
/\ maxVal = (a1 :> v1 @@ a2 :> None @@ a3 :> None)
/\ maxVBal = (a1 :> 0 @@ a2 :> -1 @@ a3 :> -1)
/\ __trace_var_156464472728326000 = (a1 :> {<<0, v1>>} @@ a2 :> {} @@ a3 :> {})
/\ msgs = { [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }
/\ maxBal = (a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@
9: <next_156464472728330000 line 430, col 3 to line 472, col 2 of module TE>
/\ __trace_var_156464472728328000 = {}
/\ maxVal = (a1 :> v1 @@ a2 :> None @@ a3 :> None)
/\ maxVBal = (a1 :> 0 @@ a2 :> -1 @@ a3 :> -1)
/\ __trace_var_156464472728326000 = (a1 :> {<<0, v1>>} @@ a2 :> {} @@ a3 :> {})
/\ msgs = { [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1] }
/\ maxBal = (a1 :> 1 @@ a2 :> 0 @@ a3 :> -1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@
10: <next_156464472728330000 line 474, col 3 to line 518, col 2 of module TE>
/\ __trace_var_156464472728328000 = {v1}
/\ maxVal = (a1 :> v1 @@ a2 :> v1 @@ a3 :> None)
/\ maxVBal = (a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)
/\ __trace_var_156464472728326000 = (a1 :> {<<0, v1>>} @@ a2 :> {<<0, v1>>} @@ a3 :> {})
/\ msgs = { [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1] }
/\ maxBal = (a1 :> 1 @@ a2 :> 0 @@ a3 :> -1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@
11: <next_156464472728330000 line 520, col 3 to line 566, col 2 of module TE>
/\ __trace_var_156464472728328000 = {v1}
/\ maxVal = (a1 :> v1 @@ a2 :> v1 @@ a3 :> v2)
/\ maxVBal = (a1 :> 0 @@ a2 :> 0 @@ a3 :> 0)
/\ __trace_var_156464472728326000 = (a1 :> {<<0, v1>>} @@ a2 :> {<<0, v1>>} @@ a3 :> {<<0, v2>>})
/\ msgs = { [type |-> "1a", bal |-> 0],
  [type |-> "1a", bal |-> 1],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a3, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 1, acc |-> a1, mbal |-> 0, mval |-> v1] }
/\ maxBal = (a1 :> 1 @@ a2 :> 0 @@ a3 :> 0)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@
12: <next_156464472728330000 line 568, col 3 to line 616, col 2 of module TE>
/\ __trace_var_156464472728328000 = {v1}
/\ maxVal = (a1 :> v1 @@ a2 :> v1 @@ a3 :> v2)
/\ maxVBal = (a1 :> 0 @@ a2 :> 0 @@ a3 :> 0)
/\ __trace_var_156464472728326000 = (a1 :> {<<0, v1>>} @@ a2 :> {<<0, v1>>} @@ a3 :> {<<0, v2>>})
/\ msgs = { [type |-> "1a", bal |-> 0],
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
/\ maxBal = (a1 :> 1 @@ a2 :> 0 @@ a3 :> 1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@
13: <next_156464472728330000 line 618, col 3 to line 668, col 2 of module TE>
/\ __trace_var_156464472728328000 = {v1}
/\ maxVal = (a1 :> v1 @@ a2 :> v1 @@ a3 :> v2)
/\ maxVBal = (a1 :> 0 @@ a2 :> 0 @@ a3 :> 0)
/\ __trace_var_156464472728326000 = (a1 :> {<<0, v1>>} @@ a2 :> {<<0, v1>>} @@ a3 :> {<<0, v2>>})
/\ msgs = { [type |-> "1a", bal |-> 0],
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
/\ maxBal = (a1 :> 1 @@ a2 :> 0 @@ a3 :> 1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@
14: <next_156464472728330000 line 670, col 3 to line 722, col 2 of module TE>
/\ __trace_var_156464472728328000 = {v1}
/\ maxVal = (a1 :> v2 @@ a2 :> v1 @@ a3 :> v2)
/\ maxVBal = (a1 :> 1 @@ a2 :> 0 @@ a3 :> 0)
/\ __trace_var_156464472728326000 = (a1 :> {<<0, v1>>, <<1, v2>>} @@ a2 :> {<<0, v1>>} @@ a3 :> {<<0, v2>>})
/\ msgs = { [type |-> "1a", bal |-> 0],
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
/\ maxBal = (a1 :> 1 @@ a2 :> 0 @@ a3 :> 1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@
15: <next_156464472728330000 line 724, col 3 to line 778, col 2 of module TE>
/\ __trace_var_156464472728328000 = {v1, v2}
/\ maxVal = (a1 :> v2 @@ a2 :> v2 @@ a3 :> v2)
/\ maxVBal = (a1 :> 1 @@ a2 :> 1 @@ a3 :> 0)
/\ __trace_var_156464472728326000 = ( a1 :> {<<0, v1>>, <<1, v2>>} @@
  a2 :> {<<0, v1>>, <<1, v2>>} @@
  a3 :> {<<0, v2>>} )
/\ msgs = { [type |-> "1a", bal |-> 0],
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
/\ maxBal = (a1 :> 1 @@ a2 :> 1 @@ a3 :> 1)