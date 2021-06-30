derecha_de(blanco,bombilla).
derecha_de(lupa,blanco).
derecha_de(blanco,lupa).
derecha_de(blanco1,coche).
derecha_de(cafe,blanco1).
derecha_de(balanza,cafe).
derecha_de(llave,tortuga).
derecha_de(semaforo,llave).
derecha_de(martillo,semaforo).
derecha(X,Y):-derecha_de(X,Y).
derecha(X,Y):- derecha_de(Z,Y),derecha(X,Z).
