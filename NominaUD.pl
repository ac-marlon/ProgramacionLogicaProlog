vinculacion('Yolanda','TCO').
vinculacion('Miguel','HC').
vinculacion('Joaquin','HCH').
vinculacion('Alejandro','MTO').
vinculacion('Pedro','PLANTA').
vinculacion('Juliana','TCO').
vinculacion('Laura','HC').
vinculacion('Ismael','HCH').
vinculacion('David','MTO').
vinculacion('Liliana','PLANTA').
vinculacion('Jose','TCO').
vinculacion('Wilson','HC').
vinculacion('Isabel','HCH').
vinculacion('Adriana','MTO').
vinculacion('Lucia','PLANTA').
vinculacion('Cristian','TCO').
vinculacion('Osvaldo','HC').
vinculacion('Sofia','HCH').
vinculacion('Andrea','MTO').
vinculacion('Diana','PLANTA').
vinculacion('Martin','TCO').
vinculacion('Viviana','HC').
vinculacion('Carlos','HCH').
vinculacion('Tatiana','MTO').
vinculacion('Jorge','PLANTA').

%Tipo de vinculacion y las horas pagadas a la semana
horasVinculacion('TCO',35).
horasVinculacion('HC',16).
horasVinculacion('HCH',20).
horasVinculacion('MTO',22).
horasVinculacion('PLANTA',40).

vinculacionCategoria('TCO','Asistente').
vinculacionCategoria('TCO','Titular').
vinculacionCategoria('HC','Asistente').
vinculacionCategoria('HC','Titular').
vinculacionCategoria('HCH','Asistente').
vinculacionCategoria('HCH','Titular').
vinculacionCategoria('MTO','Asistente').
vinculacionCategoria('MTO','Titular').
vinculacionCategoria('PLANTA','Asistente').
vinculacionCategoria('PLANTA','Titular').

%Tipo de vinculacion, categoria y valor de la hora
valorHoraCategoria('TCO','Asistente',10000).
valorHoraCategoria('TCO','Titular',5000).
valorHoraCategoria('HC','Asistente',8500).
valorHoraCategoria('HC','Titular',12000).
valorHoraCategoria('HCH','Asistente',6700).
valorHoraCategoria('HCH','Titular',10500).
valorHoraCategoria('MTO','Asistente',5300).
valorHoraCategoria('MTO','Titular',7900).
valorHoraCategoria('PLANTA','Asistente',13600).
valorHoraCategoria('PLANTA','Titular',14000).

liquidacionBonoMensual('TCO',15).
liquidacionBonoMensual('MTO',12).
liquidacionBonoMensual('HC',10).
liquidacionBonoMensual('HCH',5).
liquidacionBonoMensual('PLANTA',25).

categoria('Yolanda','Asistente').
categoria('Miguel','Titular').
categoria('Joaquin','Asistente').
categoria('Alejandro','Titular').
categoria('Pedro','Asistente').
categoria('Juliana','Titular').
categoria('Laura','Asistente').
categoria('Ismael','Titular').
categoria('David','Asistente').
categoria('Liliana','Titular').
categoria('Jose','Asistente').
categoria('Wilson','Titular').
categoria('Isabel','Asistente').
categoria('Adriana','Titular').
categoria('Lucia','Asistente').
categoria('Cristian','Titular').
categoria('Osvaldo','Asistente').
categoria('Sofia','Titular').
categoria('Andrea','Asistente').
categoria('Diana','Titular').
categoria('Martin','Asistente').
categoria('Viviana','Titular').
categoria('Carlos','Asistente').
categoria('Tatiana','Titular').
categoria('Jorge','Asistente').

numeroEmpleado('Yolanda',1).
numeroEmpleado('Miguel',2).
numeroEmpleado('Joaquin',3).
numeroEmpleado('Alejandro',4).
numeroEmpleado('Pedro',5).
numeroEmpleado('Juliana',6).
numeroEmpleado('Laura',7).
numeroEmpleado('Ismael',8).
numeroEmpleado('David',9).
numeroEmpleado('Liliana',10).
numeroEmpleado('Jose',11).
numeroEmpleado('Wilson',12).
numeroEmpleado('Isabel',13).
numeroEmpleado('Adriana',14).
numeroEmpleado('Lucia',15).
numeroEmpleado('Cristian',16).
numeroEmpleado('Osvaldo',17).
numeroEmpleado('Sofia',18).
numeroEmpleado('Andrea',19).
numeroEmpleado('Diana',20).
numeroEmpleado('Martin',21).
numeroEmpleado('Viviana',22).
numeroEmpleado('Carlos',23).
numeroEmpleado('Tatiana',24).
numeroEmpleado('Jorge',25).

%Tipo y semanas del semestre
tipoSemestre('Normal',18).
tipoSemestre('Intersemestral',4).

%Calculo de la nomina individual en un semestre especifico
nominaEmpleado(A,K,B):-vinculacion(A,C),horasVinculacion(C,D),categoria(A,P),valorHoraCategoria(C,P,E),liquidacionBonoMensual(C,F),tipoSemestre(K,S),B is round(((D*E*S)*(1+(F/100)))).

sumar([ X | Y ],R) :- sumar(Y, R1), R is R1+X.

%Calculo de la nomina general en un semestre especifico
nominaNormal(Total) :- findall(B, (vinculacion(A,C),horasVinculacion(C,D),categoria(A,P),valorHoraCategoria(C,P,E),liquidacionBonoMensual(C,F), B is round(((D*E*18)*(1+(F/100))))), Lista),                      sumar(Lista,Total).
nominaInter(Lista) :- findall(B, (vinculacion(A,C),horasVinculacion(C,D),categoria(A,P),valorHoraCategoria(C,P,E),liquidacionBonoMensual(C,F), B is round(((D*E*4)*(1+(F/100))))), Lista).

