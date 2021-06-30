my_cifras_lista(X,L,[X|L]):-X<10,!.
my_cifras_lista(X,L,R):-X>=10,Z is X mod 10,X1 is X//10,my_cifras_lista(X1,[Z|L],R).
cifras_lista(X,R):-my_cifras_lista(X,[],R).
