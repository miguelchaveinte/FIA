enlace(madrid,valencia,890).
enlace(valencia,barcelona,600).
enlace(a,b,3).
enlace(a,c,2).
enlace(c,d,4).
enlace(c,e,5).

ruta(Ciudad1,Ciudad2,DistanciaTotal):-enlace(Ciudad1,Ciudad2,Distancia), DistanciaTotal is Distancia.
ruta(Ciudad1,Ciudad3,DistanciaTotal):-enlace(Ciudad1,Ciudad2,Distancia1),ruta(Ciudad2,Ciudad3,Distancia2),DistanciaTotal is Distancia1+Distancia2.
