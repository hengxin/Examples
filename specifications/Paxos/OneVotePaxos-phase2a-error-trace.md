1: <Initial predicate> (init)
/\ maxVal = (a1 :> None @@ a2 :> None @@ a3 :> None)
/\ __trace_var_1564468994457162000 = (a1 :> {} @@ a2 :> {} @@ a3 :> {})
/\ maxVBal = (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
/\ msgs = {}
/\ __trace_var_1564468994457164000 = {}
/\ maxBal = (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@ (phase1a)
2: <next_1564468994458166000 line 120, col 3 to line 149, col 2 of module TE>
/\ maxVal = (a1 :> None @@ a2 :> None @@ a3 :> None)
/\ __trace_var_1564468994457162000 = (a1 :> {} @@ a2 :> {} @@ a3 :> {})
/\ maxVBal = (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
/\ msgs = {[type |-> "1a", bal |-> 0]}
/\ __trace_var_1564468994457164000 = {}
/\ maxBal = (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@ (phase1b)
3: <next_1564468994458166000 line 151, col 3 to line 181, col 2 of module TE>
/\ maxVal = (a1 :> None @@ a2 :> None @@ a3 :> None)
/\ __trace_var_1564468994457162000 = (a1 :> {} @@ a2 :> {} @@ a3 :> {})
/\ maxVBal = (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
/\ msgs = { [type |-> "1a", bal |-> 0],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None] }
/\ __trace_var_1564468994457164000 = {}
/\ maxBal = (a1 :> 0 @@ a2 :> -1 @@ a3 :> -1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@ (phase1b)
4: <next_1564468994458166000 line 183, col 3 to line 215, col 2 of module TE>
/\ maxVal = (a1 :> None @@ a2 :> None @@ a3 :> None)
/\ __trace_var_1564468994457162000 = (a1 :> {} @@ a2 :> {} @@ a3 :> {})
/\ maxVBal = (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
/\ msgs = { [type |-> "1a", bal |-> 0],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }
/\ __trace_var_1564468994457164000 = {}
/\ maxBal = (a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@ (phase2a)
5: <next_1564468994458166000 line 217, col 3 to line 251, col 2 of module TE>
/\ maxVal = (a1 :> None @@ a2 :> None @@ a3 :> None)
/\ __trace_var_1564468994457162000 = (a1 :> {} @@ a2 :> {} @@ a3 :> {})
/\ maxVBal = (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
/\ msgs = { [type |-> "1a", bal |-> 0],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }
/\ __trace_var_1564468994457164000 = {}
/\ maxBal = (a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@ (phase2a)
6: <next_1564468994458166000 line 253, col 3 to line 289, col 2 of module TE>
/\ maxVal = (a1 :> None @@ a2 :> None @@ a3 :> None)
/\ __trace_var_1564468994457162000 = (a1 :> {} @@ a2 :> {} @@ a3 :> {})
/\ maxVBal = (a1 :> -1 @@ a2 :> -1 @@ a3 :> -1)
/\ msgs = { [type |-> "1a", bal |-> 0],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }
/\ __trace_var_1564468994457164000 = {}
/\ maxBal = (a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@ (phase2b)
7: <next_1564468994458166000 line 291, col 3 to line 329, col 2 of module TE>
/\ maxVal = (a1 :> v1 @@ a2 :> None @@ a3 :> None)
/\ __trace_var_1564468994457162000 = (a1 :> {<<0, v1>>} @@ a2 :> {} @@ a3 :> {})
/\ maxVBal = (a1 :> 0 @@ a2 :> -1 @@ a3 :> -1)
/\ msgs = { [type |-> "1a", bal |-> 0],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }
/\ __trace_var_1564468994457164000 = {}
/\ maxBal = (a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@ (phase2b)
8: <next_1564468994458166000 line 331, col 3 to line 371, col 2 of module TE>
/\ maxVal = (a1 :> v2 @@ a2 :> None @@ a3 :> None)
/\ __trace_var_1564468994457162000 = (a1 :> {<<0, v1>>, <<0, v2>>} @@ a2 :> {} @@ a3 :> {})
/\ maxVBal = (a1 :> 0 @@ a2 :> -1 @@ a3 :> -1)
/\ msgs = { [type |-> "1a", bal |-> 0],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }
/\ __trace_var_1564468994457164000 = {}
/\ maxBal = (a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@ (phase2b)
9: <next_1564468994458166000 line 373, col 3 to line 415, col 2 of module TE>
/\ maxVal = (a1 :> v2 @@ a2 :> v1 @@ a3 :> None)
/\ __trace_var_1564468994457162000 = (a1 :> {<<0, v1>>, <<0, v2>>} @@ a2 :> {<<0, v1>>} @@ a3 :> {})
/\ maxVBal = (a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)
/\ msgs = { [type |-> "1a", bal |-> 0],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }
/\ __trace_var_1564468994457164000 = {v1}
/\ maxBal = (a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)

@!@!@ENDMSG 2217 @!@!@
@!@!@STARTMSG 2217:4 @!@!@ (phase2b)
10: <next_1564468994458166000 line 417, col 3 to line 461, col 2 of module TE>
/\ maxVal = (a1 :> v2 @@ a2 :> v2 @@ a3 :> None)
/\ __trace_var_1564468994457162000 = (a1 :> {<<0, v1>>, <<0, v2>>} @@ a2 :> {<<0, v1>>, <<0, v2>>} @@ a3 :> {})
/\ maxVBal = (a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)
/\ msgs = { [type |-> "1a", bal |-> 0],
  [type |-> "2a", bal |-> 0, val |-> v1],
  [type |-> "2a", bal |-> 0, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a1, val |-> v2],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v1],
  [type |-> "2b", bal |-> 0, acc |-> a2, val |-> v2],
  [type |-> "1b", bal |-> 0, acc |-> a1, mbal |-> -1, mval |-> None],
  [type |-> "1b", bal |-> 0, acc |-> a2, mbal |-> -1, mval |-> None] }
/\ __trace_var_1564468994457164000 = {v1, v2}
/\ maxBal = (a1 :> 0 @@ a2 :> 0 @@ a3 :> -1)