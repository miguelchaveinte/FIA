lista([X|Y],X,[]).
lista([X|Y],Z,[X|Y1]):-lista(Y,Z,Y2),!,Y1=Y2.
%lista([X|Y],Z,[X|Y1]):- lista(Y,Z,Y1).
