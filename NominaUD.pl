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

liquidacionBonoMensual('TCO',0.15).
liquidacionBonoMensual('MTO',0.12).
liquidacionBonoMensual('HC',0.10).
liquidacionBonoMensual('HCH',0.01).
liquidacionBonoMensual('PLANTA',0.25).

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

%Tipo y semanas del semestre
tipoSemestre('Normal',18).
tipoSemestre('Intersemestral',4).

%Calculo de la nomina individual en un semestre especifico
nominaEmpleado(A,S,B):-vinculacion(A,C),horasVinculacion(C,D),valorHoraCategoria(C,D,E),liquidacionBonoMensual(C,F),tipoSemestre(_,S),B is ((D*E*S)*(1+F)).
