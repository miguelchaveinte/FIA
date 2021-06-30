sumar_lista([],[]).
sumar_lista([X],[X]):-!.
sumar_lista([H|[H1|T]],[S|S1]):- S is H+H1,sumar_lista(T,S1).
