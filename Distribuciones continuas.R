
#Examen práctico del 3er parcial (parte II)-------------------------------------

#Distribución de probabilidad continua

#Para obtener información de las distribuciones disponibles
#Se activa el comando

help("Distributions")


#-------------------------------------PROBLEMA 1--------------------------------

#X es una variable normalmente distribuida con una media
#de 30 y una desviación estándar de 4.


#------------------------------------Encontrar----------------------------------

#a) P(x<40)

#Datos:

#X=40
#media=30
#sd (desviación estándar)=4

#La Z estandarizada es: P(X<40)= P(Z<2.5)

#Función pnorm(2.5)

pnorm(40, mean = 30, sd = 4, lower.tail = TRUE)

#Resultado: 0.9937903



#b) P(x>21)

#Datos:

#X=21
#media=30
#sd (desviación estándar)=4

#La Z estandarizada es: P(X>21)= P(Z>-2.5)

#Función pnorm(-2.5)

pnorm(21, mean = 30, sd = 4, lower.tail = TRUE)

#Resultado: 0.01222447



#c) P(30<x<35)


#Datos:

#X=30
#media=30
#sd (desviación estándar)=4

#La Z estandarizada es: P(X<30)= P(Z<0)

#Función pnorm(0)

pnorm(30, mean = 30, sd = 4, lower.tail = TRUE)

#Resultado: 0.5



#Datos:

#X=35
#media=30
#sd (desviación estándar)=4

#La Z estandarizada es: P(X<35)= P(Z<1.25)

#Función pnorm(1.25)

pnorm(35, mean = 30, sd = 4, lower.tail = TRUE)

#Resultado: 0.8943502


#Se realiza una resta entre las dos probabilidades empezando por la mayor

pnorm(35, mean = 30, sd = 4, lower.tail = TRUE) - pnorm(30, mean = 30, sd = 4,
                                                        lower.tail = TRUE)

#Resultado: 0.3943502

#----------------------------------PROBLEMA 2-----------------------------------


#X es una variable normalmente distribuida con una media de 45 y una
#desviación estándar de 2. 


#------------------------------------Encontrar----------------------------------

#a) P(x<75)

#Datos:

#X=75
#media=45
#sd (desviación estándar)=2

#La Z estandarizada es: P(X<75)= P(Z<15)

#Función pnorm(15)

pnorm(75, mean = 45, sd = 2, lower.tail = TRUE)

#Resultado: 1



#b) P(x>13)

#Datos:

#X=13
#media=45
#sd (desviación estándar)=2

#La Z estandarizada es: P(X>13)= P(Z<-16)

#Función pnorm(-16)

pnorm(13, mean = 45, sd = 2, lower.tail = TRUE)

#Resultado: 0.6388754e-57


#c) P(60<x<82)

#Datos:

#X=60
#media=45
#sd (desviación estándar)=2

#La Z estandarizada es: P(X<60)= P(Z<7.5)

#Función pnorm(7.5)

pnorm(60, mean = 45, sd = 2, lower.tail = TRUE)

#Resultado: 1


#Datos:

#X=82
#media=45
#sd (desviación estándar)=2

#La Z estandarizada es: P(X<82)= P(Z<18.5)

#Función pnorm(18.5)

pnorm(82, mean = 45, sd = 2, lower.tail = TRUE)

#Resultado: 1


#Se realiza una resta entre las dos probabilidades empezando por la mayor.

pnorm(82, mean = 45, sd = 2, lower.tail = TRUE) - pnorm(60, mean = 45, sd = 2,
                                                        lower.tail = TRUE)

#Resultado: 0.318634e-13


#----------------------------------PROBLEMA 3-----------------------------------

#El ingreso a una determinada universidad se determina mediante un examen 
#nacional. Los resultados de esta prube se distribuyen normalmente con una 
#media de 500 y una desviación estándar de 100.
#Timmy quiere ser admitido en esta universidad y sabe que debe obtener mejores
#resultados que al menos el 70% de los estudiantes que tomaron el examen.

#Timmy presenta el examen y obtuvo 585 puntos. ¿Será admitido en esta universidad?



#a)Genera el siguiente gráfico:

#n:1000

hist(rnorm(1000, 500, 100), 40, col = "blue")
abline(v=585, col=10)



#b) Solución:
#Es P(X<585)>70%?

#Función:
pnorm(585, mean = 500, sd = 100)

#Resultado: 0.8023375

#Multiplica la probabilidad obtenida por 100

#Interpretación: 
#Timmy obtuvo una puntuación major que el 80.23% de los estudiantes que
#tomaron el examen y será admitido en esta universidad.



#----------------------------------PROBLEMA 4-----------------------------------

#El ingreso a la BENV se determina mediante la prueba estandarizada EXANII-II.
#Los resultados de esta prueba se distribuyeron normalmente con una 
#media de 1000 y una desviación estándar de 100. Tú quieres ser admitido en esta
#institución y sabes que debes obtener mejores resultados que al menos el 90% de 
#los estudiantes que tomaron el examen.

#Presentas el examen y obtuviste 1185 puntos.
#¿Serás admitida en la BENV?


#a)Genera el siguiente gráfico:

#n= 2600

hist(rnorm(2600, 1000, 100), 40, col = "blue")
abline(v=1185, col = 10)


#b)Solución: 
#Es P(X<1185)>90%?

#Función: 

pnorm(1185, mean = 1000, sd = 100)

#Resultado: 0.9678432
#Multiplica la probabilidad obtenida por 100.

#Interpretación
#Al presentar el examen obtuve una puntuación mejor que el 96.78%
#de los estudiantes que tomaron el examen, por lo tanto, fui
#admitida en la universidad.




#--------------------------------------T-test-----------------------------------

#Prueba de hipótesis 


#one sample t-test

#data: x
#t = -1.4507, df = 99, p-value = 0.15
#alternative hypothesis: true mean is not equal to 10
#95 percent confidence interval:
#9.676689  10.050213
#sample estimates:
#mean of x

#9.863451


#Interpretación:
#El p-valor es >0.05, no se rechaza. Por lo tanto, la muestra
#tiene media igual a 10.