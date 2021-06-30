potencia(_,0,1).
potencia(X,Y,Z):-Y>0, Y1 is Y-1,potencia(X,Y1,Z1),Z is X*Z1.
potencia(X,Y,Z):- Y<0,Y1 is Y*(-1),potencia(X,Y1,Z1),Z is 1/Z1.


par(X):- 0 is X mod 2.

ejer2(X,Y,Z,R):- X=<Y,par(X),potencia(X,Z,R1),R is R1.
ejer2(X,Y,Z,R):- X=<Y,X1 is X+1,ejer2(X1,Y,Z,R).
