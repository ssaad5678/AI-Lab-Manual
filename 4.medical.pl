check:-
checkfor(Disease),
write('I beleive you have'),
write(Disease),
nl,
undo.
checkfor(cold):-cold.
cold:-
checksymptom(a),
checksymptom(b),
checksymptom(c),
nl.
askQuestion(Question):-
write('Do you have the symptom'),
write(Question),
write('?'),
read(Reply),
nl,
( (Reply == yes ; Reply == y)
->
assertz(yes(Question));
assertz(no(Question)),fail).
:- dynamic([yes/1,no/1]).
checksymptom(S) :-
(yes(S)
->
true ;
(no(S)
->
fail ;
askQuestion(S))).
undo:-retract(yes(_)),fail.
undo:-retract(no(_)),fail.
undo.
/*Input:check.*/
