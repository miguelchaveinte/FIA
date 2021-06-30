sucesion(0,3).
sucesion(N,X):-par(N), N1 is N-1,sucesion(N1,X1),X is X1*3,!.
sucesion(N,X):-N1 is N-1,sucesion(N1,X1),X is (X1*3)-1,!.
par(N):- 0 is N mod 2.
