longitud([],D):- D is 0.
longitud([X|Y],D):- longitud(Y,NEWD), D is NEWD+1.
