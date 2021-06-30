ndiv(_,1,1).

ndiv(N,X,ND):- N>1,X>1,0 is N mod X,NX is X-1,ndiv(N,NX,SD),ND is SD+1.

ndiv(N,X,ND):-N>1,X>1,not(0 is N mod X),NX is X-1,ndiv(N,NX,ND).

ndiv(N,ND):- ndiv(N,N,ND).

es_primo(N):- ndiv(N,2).

%primo(1,1).
primo(N,X):- N>1,es_primo(N),X is N.
primo(N,X):- N>1,N1 is N-1,primo(N1,X).
