padrede('juan','maria').
padrede('pablo','jesus').
padrede('pablo','marcela').
padrede('carlos','lucia').
padrede('carlos','luis').
padrede('daniela','maria').
padrede('juliana','lucia').
padrede('juliana','luis').
padrede('isabel','marcela').
padrede('isabel','jesus').
padrede('sofia','juan').
padrede('sofia','juliana').
padrede('maria','jose').
padrede('juan','maria').
padrede('luis','pamela').
padrede('marcela','pamela').
padrede('pamela','gustavo').
padrede('jose','gustavo').
padrede('pamela','lina').
padrede('jose','lina').
padrede('ruben','daniela').
padrede('ruben','isabel').
padrede('jesus','jose').
padrede('daniel', 'francisca').
padrede('gustavo','francisca').
padrede('francisca','raul').
padrede('britany','raul').
eshombre('juan').
eshombre('pablo').
eshombre('carlos').
eshombre('jesus').
eshombre('ruben').
eshombre('gustavo').
eshombre('luis').
eshombre('jose').
eshombre('daniel').
eshombre('raul').
esmujer('sofia').
esmujer('juliana').
esmujer('daniela').
esmujer('isabel').
esmujer('lucia').
esmujer('maria').
esmujer('marcela').
esmujer('pamela').
esmujer('lina').
esmujer('francisca').
esmujer('britany').

tiode(A,B) :-hermanode(A,C), padrede(C,B).

sobrinode(A,B) :-tiode(B,A).

bisabuelode(A,B) :-padrede(A,C), padrede(C,D), padrede(D,B).

bisnietode(A,B) :-bisabuelode(B,A).

hijode(A,B) :-padrede(B,A).

abuelode(A,B) :-padrede(A,C), padrede(C,B).

nietode(A,B) :-abuelode(B,A).

esposode(A,B) :-padrede(A,C), padrede(B,C).

hermanode(A,B) :-padrede(C,A), padrede(C,B), A \== B.

primode(A,B) :-hermanode(C,D), hijode(A,C), hijode(B,D).

cuñadode(A,B) :-hermanode(A,C), esposode(C,B).

esfeliz(A) :-esposode(A,B), padrede(B,C), hijode(C,A).

esadoptado(C) :-eshombre(A), eshombre(B), padrede(A,C), padrede(B,C), A\==B.

esadoptado(C) :-esmujer(A), esmujer(B), padrede(A,C), padrede(B,C), A\==B.

familiarde(A,B) :-padrede(A,B).
familiarde(A,B) :-abuelode(A,B).
familiarde(A,B) :-hermanode(A,B).
familiarde(A,B) :-nietode(A,B).
familiarde(A,B) :-esposode(A,B).
familiarde(A,B) :-primode(A,B).
familiarde(A,B) :-tiode(A,B).
familiarde(A,B) :-sobrinode(A,B).
familiarde(A,B) :-bisabuelode(A,B).
familiarde(A,B) :-bisnietode(A,B).
familiarde(A,B) :-hijode(A,B).
