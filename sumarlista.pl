my_sumar_lista([X],L,L1):- append(L,[X],L1),!.
my_sumar_lista([X,Y|Resto],L,R):-Z is X+Y,append(L,[Z],L1),my_sumar_lista(Resto,L1,R).
sumar_lista(X,R):- my_sumar_lista(X,[],R).
