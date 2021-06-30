%Miguel Chaveinte Garcia
%
% En esta primera clausula analizamos si ya hemos llegado a la ultima
% iteracion en la que el minuendo y el sustraendo son iguales por lo el
% resultado es ese numero.
mcd(X,Y,R):-X=Y,R is X,!.
% en esta clausula analizamos que el orden de los argumentos es correcto
% para hacer bien la diferencia, es decir, comprobamos que el minuendo
% que es el primer argumento sea mayor que el sustraendo para poder
% hacer la diferencia y llamar de manera recursiva para una nueva
% iteracion.
mcd(X,Y,R):-X>Y,Z is X-Y,mcd(Y,Z,R),!.
% en esta iteracion es la que ve que el minuendo y sustraendo están en
% los argumentos contrarios para poder hacer la operacion por lo que lo
% invertimos y llamamos de nuevo recursivamente.
mcd(X,Y,R):-Y>X,mcd(Y,X,R),!.
