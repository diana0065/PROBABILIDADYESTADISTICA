#Generar números aleatorios para una muestra de 35 personas en una 
#población de 73 alumnas/os del 5to semestre de la LEP BENV

#Comando
sample(x, side, replace=True/FALSE)


#Ejemplo
sample(1:73,35, replace = FALSE)
sample(1:70,34, replace=FALSE)




#Ejercicios



#1.1- Calcula el tamaño de muestra para una población de 
#83 alumnas y alumnos que se encuentran en primer grado
#de la Licenciatura en Educación Primaria de la BENV.


#Entrar a la página: https://www.macorr.com/sample-size-calculator.htm
#Determinar el tamaño de la muestra, que es igual a "68 alumnos(as)"



#1.2.- Una vez que obtengas el tamaño de la muestra, 
#selecciona el número de lista de las personas que formaran
#parte de la muestra.

#Se obtiene el coeficiente
#Que es igual a C= n(muestra)/N(población)
#Como resultado se obtiene: 0.57 coeficiente de estrato
#Se multiplica (0.57) (68) = 38.76., redondeando a 39 alumnos(as)



#1.3.- Crea un vector llamado muestra con los números de 
#lista de las personas que forman parte de la muestra.


#Generar números aleatorios para una muestra de 39 personas en una 
#población de 83 alumnas/os del primer semestre de la LEP BENV


#Comando
sample(x, side, replace=True/FALSE)


#Generación de números aleatorios
sample(1:83,39, replace = FALSE)



#2.- Repite el ejercicio anterior ahora para una población
# de 90 alumnas y alumnos que integran el segundo año de la
#licenciatura en Educación Primaria de la BENV.



#Entrar a la página: https://www.macorr.com/sample-size-calculator.htm
#Determinar el tamaño de la muestra, es igual a "73 alumnos(as)"


#Se obtiene el coeficiente
#es igual a C= n(muestra)/N(población)
#C= n(73) / N(90)
#Como resultado se obtiene: 0.81 coeficiente de estrato
#Se múltiplica (0.81) (73) = 59.13., redondeando a 60 alumnos(as)


#Comando
sample(x, side, replace=True/FALSE)

#Generar números aleatorios para una muestra de 60 personas en una 
#población de 90 alumnas/os del segundo año de la LEP BENV

#Generación de números aleatorios
sample(1:90,60, replace = FALSE)



#3.- Determina el número e identifíca a las personas que participarán
#en un estudio de seguimiento de egresados de la generación
#2015-2019 de las 5 licenciaturas de la BENV.

#Primaria: 78 personas egresadas.
#Preescolar: 84 personas egresadas.
#Física: 35 personas egresadas.
#Telesecundaria: 83 personas egresadas.
#Especial: 25 personas.

#La población de egresados de la generación 2015-2019, en las 5 licenciaturas,
#es de 305 personas


#Entrar a la página: https://www.macorr.com/sample-size-calculator.htm
#Determinar el tamaño de la muestra, siendo igual a "170 egresados"


#Se obtiene el coeficiente
#Que es igual a C= n(muestra)/N(población)
#C= n(170) / N(305)
#Como resultado se obtiene: 0.55 coeficiente de estrato
#Se multiplica (0.55) (170) = 93.5., redondeando a 93 egresados


#Comando
sample(x, side, replace=True/FALSE)

#Generar números aleatorios para una muestra de 93 personas en una 
#población de 305 egresados egresados de la generación
#2015-2019 de las 5 licenciaturas de la BENV.

#Generación de números aleatorios
sample(1:305,93, replace = FALSE)



