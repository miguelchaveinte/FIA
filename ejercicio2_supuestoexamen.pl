burbuja(X,X). %Lista ya ordenada
burbuja(Lista,Ordenada):-permuta(Lista,Lista1),!,burbuja(Lista1,Ordenada).

permuta([X,Y|Z],[Y,X|Z]):-X>Y.
permuta([Z|Resto],[Z|Resto1]):-permuta(Resto,Resto1).


