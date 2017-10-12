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
gustateatro('luis').

esdeportista('juan').
esdeportista('luis').
esdeportista('lina').

gustabailar('britany').
gustabailar('pamela').
gustabailar('jesus').

quierehijos('britany').
quierehijos('pamela').
quierehijos('luis').

gustaviajar('juan').
gustaviajar('luis').
gustaviajar('britany').
gustaviajar('sofia').

esfumador('britany').
esfumador('pamela').
esfumador('pablo').
esfumador('luis').

esbebedor('lina').
esbebedor('jesus').

escompatiblecinefilo(A,B) :- escinefilo(A), escinefilo(B), A\==B.
escompatibledeportista(A,B) :- esdeportista(A), esdeportista(B), A\==B.
escompatiblequierehijos(A,B) :- quierehijos(A), quierehijos(B), A\==B.
escompatiblefumador(A,B) :- esfumador(A), esfumador(B), A\==B.

incompatibleCineBeber(A,B) :- escinefilo(A), esbebedor(B), A\==B.
incompatibleTeatroFumar(A,B) :- gustateatro(A), esfumador(A), A\==B.
incompatibleHijosBailar(A,B) :- quierehijos(A), gustabailar(A), A\==B.
incompatibleDeportistaFumar(A,B) :- esdeportista(A), esfumador(A), A\==B.

escompatibleCineTeatro(A,B) :- escinefilo(A), gustateatro(B), A\==B.
escompatibleDeporteBailar(A,B) :- esdeportista(A), gustabailar(B), A\==B.
escompatibleHijosViajar(A,B) :- quierehijos(A), gustaviajar(B), A\==B.
escompatibleFumarBeber(A,B) :- esfumador(A), esbebedor(B), A\==B.

muycompatible(A,B) :- escompatibleCineTeatro(A,B); escompatibleDeporteBailar(A,B); escompatibleHijosViajar(A,B); escompatibleFumarBeber(A,B), A\==B.

compatible(A,B) :- escompatiblecinefilo(A,B); escompatibledeportista(A,B); escompatiblequierehijos(A,B); escompatiblefumador(A,B), A\==B.

incompatible(A,B) :- incompatibleCineBeber(A,B), incompatibleTeatroFumar(A,B), incompatibleHijosBailar(A,B), incompatibleDeportistaFumar(A,B), A\==B.

