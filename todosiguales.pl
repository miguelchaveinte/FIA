todos_iguales([X]):-true,!.
todos_iguales([X,Y|Resto]):-X=:=Y,!,todos_iguales([Y|Resto]).
