#Vas a trabajar con la matriz de datos
#
millas<-datos::millas

#1.- Explorar la matriz de datos millas 
#valor: 5 puntos por cada comando correcto.


?millas
dim(millas)
names(millas)
str(millas)
anyNA(millas)
typeof(millas)
View(millas)

#Covertiremos la matriz de datos a "data frame".
millas_diana<-as.data.frame(millas)

#2.- Determinar las medidas estadísticas descriptivas
#y de variabilidad
#Importante: no calcules los errores.

summary(millas_diana)

installed.packages("modeest") #Ya está instalado sólo lo activo en packages
library(modeest)


#para determinar la moda, en cada variable
#es mfv()
#revisar las variables cuando activo en $

mfv(millas_diana$fabricante)
mfv(millas_diana$modelo)
mfv(millas_diana$cilindrada)
mfv(millas_diana$anio)
mfv(millas_diana$cilindros)
mfv(millas_diana$transmision)
mfv(millas_diana$traccion)
mfv(millas_diana$ciudad)
mfv(millas_diana$autopista)
mfv(millas_diana$combustible)
mfv(millas_diana$clase)


#Se calculará la varianza de cada una de las variables
#cuantitativas

#Revisar los resultados en la consola, para el resultado de cada variable.

var(millas_diana$cilindrada)
var(millas_diana$anio)
var(millas_diana$cilindros)
var(millas_diana$autopista)
var(millas_diana$ciudad)

#Se calculará la desviación estándar 
#para cada una de las variables cuantitativas

sd(millas_diana$cilindrada)
sd(millas_diana$anio)
sd(millas_diana$cilindros)
sd(millas_diana$autopista)
sd(millas_diana$ciudad)

#Se calculará el coeficiente de variación
#vamos a instalar el paquete FinCal y abrimos la librería
install.packages("FinCal") #Ya está instalado sólo lo activo en packages
library(FinCal)


# Se calcula el coeficiente de variación
coefficient.variation(sd=sd(millas_diana$cilindrada),
                      avg=mean(millas_diana$cilindrada))

coefficient.variation(sd=sd(millas_diana$anio),
                      avg=mean(millas_diana$anio))

coefficient.variation(sd=sd(millas_diana$cilindros),
                      avg=mean(millas_diana$cilindros))

coefficient.variation(sd=sd(millas_diana$autopista),
                      avg=mean(millas_diana$autopista))

coefficient.variation(sd=sd(millas_diana$ciudad),
                      avg=mean(millas_diana$ciudad))




#------------- Empezaremos a contruir algunos graficos---





#Instalaremos el paquete tidyverse y abriremos la libreria
install.packages("tidyverse")
install.packages("RColorBrewer")


#Abrimos las librerias
library(tidyverse)
library(RColorBrewer)



#A) Un gráfico de dispersión con las variables cilindradas y autopistas
#el color lo indica la variable clase. 
#Valor total: 20 puntos
#(10 puntos por comando activado correcto).
#(10 punto por la generación del gráfico).


#Diagrama de dispersión 1
dispersion_1<-ggplot(millas_diana, aes(x=cilindrada, y=autopista, color=clase))+
  geom_point()

#visualizamos el gráfico
dispersion_1


#B) Un gráfico boxplot con las variables transmisión y ciudad
#El color lo indica la variable transmisión    
#El título del gráfico es Transmisión de autos en ciudad
#Coloca la etiqueta "Transmisión" en el eje x 
#Coloca la etiqueta "Ciudad" en el eje y 
#Valor Total: 20 puntos
#(10 puntos por comando activado correcto).
#(10 punto por la generación del gráfico del gráfico).


#BOXPLOT
boxplot<-ggplot(millas_diana,aes(factor(transmision), 
                             ciudad, fill=transmision))+
  geom_boxplot()+
  ggtitle("Transmisión de autos en ciudad")+
  xlab("Transmisión")+
  ylab("Ciudad")

#visualizamos el gráfico
boxplot



#C) Un gráfico de barras para la variable "cilindros" 
#Valor Total: 20 puntos
#(10 puntos por comando activado correcto).
#(10 punto por la generación del gráfico).


#Grafico de Barras

#Construcción de la tabla con la que vamos a trabajar
attach(millas_diana)
tabla_millas<-table(millas_diana$cilindros)

#visualizamos la variable x que contiene la columna de Especies
tabla_millas

#Especificar la paleta de colores que se va a utilizar
color=c("violetred","violetred3","slateblue3","steelblue4")

#Construimos el gráfico de la variable x
barplot(tabla_millas,xlab="cilindros", ylab="frecuencias", 
        main="Gráfico de barras cilindros", col=color)




