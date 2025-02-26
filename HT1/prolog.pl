padre(juan, maria).
padre(juan, pedro).
madre(ana, maria).
madre(ana, pedro).
padre(pedro, carlos).
padre(maria, luis).

hermano(X, Y) :- padre(P, X), padre(P, Y), madre(M, X), madre(M, Y), X \= Y.
abuelo(X, Y) :- padre(X, P), padre(P, Y).
abuelo(X, Y) :- padre(X, P), madre(P, Y).
tio(X, Y) :- hermano(X, P), padre(P, Y).
tio(X, Y) :- hermano(X, P), madre(P, Y).
primo(X, Y) :- padre(P, X), tio(P, Y).
primo(X, Y) :- madre(M, X), tio(M, Y).