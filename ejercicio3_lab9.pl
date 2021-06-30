elimina([X|Y],1,Y).
elimina([X|Y],N,[X|Z]):-N1 is N-1,elimina(Y,N1,Z),!.
