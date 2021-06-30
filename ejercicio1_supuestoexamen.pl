%separar([],[],[]).
%separar([X|Y],P,N):-X>=0,!,P1 =[X|P],separar(Y,P1,N).
%separar([X|Y],P,N):-X<0,!,N1 =[X|N],separar(Y,P,N1).

separar([],[],[]):-!.
separar([X|Xs],[X|Pos_0],Neg):-X>=0,!,separar(Xs,Pos_0,Neg).
separar([X|Xs],Pos_0,[X|Neg]):- separar(Xs,Pos_0,Neg).
