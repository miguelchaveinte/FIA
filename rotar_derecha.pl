my_rotar_derecha([X],P,[X|P]).
my_rotar_derecha([],[],[]).
my_rotar_derecha([X|L],P,R):- append(P,[X],P1),my_rotar_derecha(L,P1,R).
rotar_derecha(L,R):-my_rotar_derecha(L,[],R).
