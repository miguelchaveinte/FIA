abinario(1,L):- L=[1|L].
%abinario(2,[1,0]).
abinario(N,L):-N>0,R is N mod 2,N1 is N//2,L1 =[R|L],abinario(N1,L1).
