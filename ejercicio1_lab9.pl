suma([X],S):- !,S is X.
suma([X|Y],S):- suma(Y,S1),S is S1+X.
