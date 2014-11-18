homem(dudu).
homem(dede).
homem(geraldo).
homem(arilmar).
homem(antonio).
homem(joao).

mulher(mona).
mulher(dina).
mulher(margarete).
mulher(dora).

progenitores(dudu, margarete).
progenitores(dudu, geraldo).
progenitores(dede, geraldo).
progenitores(dede, margarete).
progenitores(mona, dina).
progenitores(mona, arilmar).
progenitores(margarete, dora).
progenitores(margarete, antonio).
progenitores(geraldo, joao).

pai(X, Y) :- homem(Y), progenitores(X, Y).
mae(X, Y) :- mulher(Y), progenitores(X, Y).

avoh(X, Y) :- (mae(Z, Y), mae(X, Z));(mae(Z, Y), pai(X, Z)).
avou(Xp, Yp) :- (pai(Zp, Yp), pai(Xp, Zp));(pai(Zp, Yp), mae(Xp, Zp)).
avohs(X, Y) :- avou(X, Y) ; avoh(X, Y).