rastreio([banana, maca, pera], cozinha).
rastreio([faca,colher,panela,prato], cozinha).
rastreio([cama, travesseiro, roupas], quarto).
rastreio([papel, shampoo], banheiro).
rastreio([planta, tapete], corredor).

casa(cozinha).
casa(quarto).
casa(banheiro).

emcasa(X, Y) :- rastreio(X, Y), casa(Y).

max(X,Y,Z) :- X > Y, Z X.
max(X,Y,Z) :- X < Y, Z Y.


