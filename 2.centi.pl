c_to_f(C,F) :- F is C * 9 / 5 + 32.
% here freezing point is less than 32 Fahrenheit
freezing(F) :-F =< 32.
/*Input:c_to_f(100,F)*/
