eshombre('juan').
eshombre('pablo').
eshombre('jesus').
eshombre('luis').

esmujer('sofia').
esmujer('pamela').
esmujer('britany').
esmujer('lina').

escinefilo('juan').
escinefilo('sofia').
escinefilo('pablo').

gustateatro('lina').

esdeportista('juan').
esdeportista('luis').
esdeportista('sofia').

gustabailar('britany').
gustabailar('pamela').
gustabailar('jesus').

quierehijos('britany').
quierehijos('pamela').
quierehijos('luis').

esfumador('britany').
esfumador('pamela').
esfumador('pablo').
esfumador('luis').


escompcine(A,B) :- escinefilo(A), escinefilo(B), A\==B.
escompcinte(A,B) :- escinefilo(A), gustateatro(B), A\==B.

escomdep(A,B) :- esdeportista(A), esdeportista(B), A\==B.
escombail(A,B) :- gustabailar(A), gustabailar(B), A\==B.
escomdepbai(A,B) :- esdeportista(A), gustabailar(B), A\==B.

escomhijo(A,B) :- quierehijos(A), quierehijos(B), A\==B.

escomfum(A,B) :- esfumador(A), esfumador(B), A\==B.

muycompatible(A,B) :- escompcine(A,B), escomdep(A,B), escomhijo(A,B), escomfum(A,B), A\==B.
mediocompatible(A,B) :- escompcinte(A,B), escombail(A,B), escomdepbai(A,B), A\==B.
pococompatible(A,B) :- escompcinte(A,B); escombail(A,B); escomdepbai(A,B), A\==B.
