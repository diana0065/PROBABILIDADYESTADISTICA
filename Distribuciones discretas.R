
#Distribuciones discretas


#-----------------------------------Binomial---------------------------------- 

#Encontrar la probabilidad de tener cuatro o
#menos respuestas correctas si un estudiante intenta
#responder a cada pregunta al azar.

#El comando a utilizar es
dbinom(k, size = n, prob = 0.2)

#Cambio los valores de la función
dbinom(4, size = 12, prob = 0.2)

#Resultado: 0.132


#Encontrar la probabilidad de tener cuatro o menos
#respuestas correctas si un estudiante intenta responder
#a cada pregunta al azar.

#El comando a utilizar es:
sum(dbinom(0:4, n, p))

#Cambiar los valores
sum(dbinom(0:4,12,0.2))

#Resultado: 0.927


#¿Cuál es la probabilidad de que 2 o 3 preguntas sean 
#respondidas correctamente?

dbinom(2, size = 12, prob = 0.2)

#Resultado:0.283

dbinom(3, size = 12, prob = 0.2)

#Resultado:0.236



#Supongamos que la empresa Apple fabricó el iphone 11s con una 
#probabilidad de 0.005 de ser defectuosos. El producto se envía en una caja que
#contiene 25 artículos. 
#¿Cuál es la probabilidad de que una caja elegida al azar
#contenga un iphone 11s defectuoso?

dbinom(1, size = 25, prob = 0.005)

#Resultado:0.1108

#--------------------------------------Poisson--------------------------------

#Para optimizar la llegada de los estudiantes evitando las aglomeraciones
#se requiere saber la probabilidad de que lleguen 50 alumnos en 15 minutos.


#Probabilidad de que 35 alumnos lleguen en 15 minutos a la entrada
#de la escuela.
#x= número de alumnos
#lamda= tiempo de llegada

#x= 35
#lamda= 15

#Comando a utilizar
dpois(x,lambda = )

#Cambiar los valores de la función
dpois(35, lambda = 15)

#Resultado:0.00000431



#Probabilidad de que 50 alumnos lleguen en 15 minutos
#a la entrada de la escuela
#x= número de alumnos
#lambda= tiempo de llegada

#x=50
#lambda=15

dpois(50, lambda = 15)

#Resultado:0.000000000000641



#¿Cual es la probabilidad de que a la escuela
#lleguen 34 alumnos en 5 minutos?

#x=34
#lambda=5

dpois(34, lambda = 5)

#Resultado:0.0000000000000000132




#¿Cual es la probabilidad de que a la salida de escuela,
#se encuentren 60 alumnos en 5 minutos?

#x=60
#lambda=5

dpois(60, lambda = 5)

#Resultado:0.000000000000000000000000000000000000000000702




#¿Cual es la probabilidad de que a la salida de escuela,
#se encuentren 120 alumnos en 5 minutos?

#x=120
#lambda=5

dpois(120, lambda = 5)

#Resultado:0.000000000000000000000000000000000000000000
#000000000000000000000000000000000000000000000000000000
#000000000000000000000757


