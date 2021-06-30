%Miguel Chaveinte Garcia
%
% Si lista ya completamente analizada se devuelve la lista parcial que
% estaba generada
my_borrar_repes([],P,P):-!.
% Primera iteracion de mi funcion en la que la lista parcial donde vamos
% a ir guardando la lista de cada iteración hasta que lleguemos al
% final, esta lista parcial esta vacia porque es la primera vez por lo
% que introducimos el primer elemento de la lista a analizar y llamamos
% recursivamente a my_borrar_repes
my_borrar_repes([X|L],P,R):-P=[],my_borrar_repes(L,[X],R).
% en esta clausula lo que analizamos es que si el primer elemento de la
% lista a analizar,ya teniendo elementos en la lista parcial esta
% contenido o no en dicha lista parcial, contiene nos devuelve true si
% esta contenido por lo que no deberemos introducirle en la lista
% parcial, por lo que hacemos una llamada recursiva a my_borrar_repes
% con el resto de la lista, la lista parcial que no ha sido modificada.
my_borrar_repes([X|L],P,R):-contiene(X,P),my_borrar_repes(L,P,R).
% en esta clausula se entra en el caso de que el primer elemento de la
% lista no este contenido en la lista parcial lo que se llama a
% concatena que es un append creado por mi en el que se concatena la
% lista parcial que teniamos hasta el momento mas este nuevo elemento y
% llamamos recursivamente a my_borrr_repes con el resto de la lista a
% analizar,la nueva lista parcial concatenada.
my_borrar_repes([X|L],P,R):-concatena(P,[X],Z),my_borrar_repes(L,Z,R).
% llamada para mi programa que la convierto en una nueva llamada a una
% funcion para adecuarla a mis operaciones , con otro argumento extra
% en el que se va a almacenar las listas parciales generadas.
borrar_repes(L,R):-my_borrar_repes(L,[],R),!.
% contiene es la clausula que analiza si un elemento esta contenido en
% una lista. se analiza hasta que la lista a analizar se vacie, es
% dedcir hayamos analizado todos los elemenots. devuelve true si el
% elemnto esta contenido y false en caso contrario.
contiene(X,[Y|R]):-X=Y.
contiene(X,[Y|R]):-contiene(X,R).
% concatena funciona como la funcion append es decir une la lista del
% primer argumento con la lista del segundo argumento dejando la nueva
% lista en el tercer argumento.
concatena(A,B,C):-A=[],C=B.
concatena([X|A],B,C):-concatena(A,B,E),C=[X|E].
