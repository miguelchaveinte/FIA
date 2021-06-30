insertar(I,[X|Y],S):-S=[I,X|Y].
insertar(I,[X|Y],[X|S1]):- insertar(I,Y,S),S1=S.
