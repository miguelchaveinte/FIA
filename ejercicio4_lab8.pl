borrar(X,[X|Y],N):-N=Y.
borrar(Z,[X|Y],[X|R1]):-borrar(Z,Y,N), R1=N.
