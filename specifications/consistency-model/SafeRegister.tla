---------------------------- MODULE SafeRegister ----------------------------
CONSTANTS 
    Writer,
    Reader,
    T

notValue == CHOOSE t : t \notin T

(**************************************************************************
--algorithm Register {
    variables r = notValue, result = notValue;

    process (W \in Writer) 
    {
        a: r := notValue;
        b: with (v \in T)
                { r := v }
    }
    
    process (R \in Reader) {
        c: with (v \in IF r = notValue THEN T ELSE {r})
                { result := v }
    }
}
***************************************************************************)
\* BEGIN TRANSLATION
VARIABLES r, result, pc

vars == << r, result, pc >>

ProcSet == (Writer) \cup (Reader)

Init == (* Global variables *)
        /\ r = notValue
        /\ result = notValue
        /\ pc = [self \in ProcSet |-> CASE self \in Writer -> "a"
                                        [] self \in Reader -> "c"]

a(self) == /\ pc[self] = "a"
           /\ r' = notValue
           /\ pc' = [pc EXCEPT ![self] = "b"]
           /\ UNCHANGED result

b(self) == /\ pc[self] = "b"
           /\ \E v \in T:
                r' = v
           /\ pc' = [pc EXCEPT ![self] = "Done"]
           /\ UNCHANGED result

W(self) == a(self) \/ b(self)

c(self) == /\ pc[self] = "c"
           /\ \E v \in IF r = notValue THEN T ELSE {r}:
                result' = v
           /\ pc' = [pc EXCEPT ![self] = "Done"]
           /\ r' = r

R(self) == c(self)

Next == (\E self \in Writer: W(self))
           \/ (\E self \in Reader: R(self))
           \/ (* Disjunct to prevent deadlock on termination *)
              ((\A self \in ProcSet: pc[self] = "Done") /\ UNCHANGED vars)

Spec == Init /\ [][Next]_vars

Termination == <>(\A self \in ProcSet: pc[self] = "Done")

\* END TRANSLATION
=============================================================================
\* Modification History
\* Last modified Sat Jul 06 09:21:10 CST 2019 by hengxin
\* Created Wed Jul 03 11:03:58 CST 2019 by hengxin
