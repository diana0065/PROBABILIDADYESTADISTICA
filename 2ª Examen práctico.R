
#Análisis de datos en scala Likert

install.packages("likert")
install.packages("ggplot2")
library(likert)
library(ggplot2)

#Para este ejercicio se va a utilizar la matriz de datos
#de los resultados de la prueba PISA en 2009
#que se encuentra precargada en el paquete likert
#mediante el comando data
data("pisaitems")

#Se le asigna un nuevo nombre a la matriz de datos
#para su mejor uso, usé el nombre de la creadora
pisadiana<-pisaitems

#Exploramos la matriz de datos
names(pisa)
typeof(pisa)
str(pisa)


#Se visualizamos los valores que componen una variable
head(pisa$CNT) #Se observan los paìses donde se realizò la prueba
head(pisa$ST26Q01) #Se reflejan las opciones del ítem

#Se buscan los valores perdidos
anyNA(pisa)

#Número total de datos perdidos en la matriz de datos
sum(is.na(pisa)) 

#Eliminación de filas con datos perdidos
#y se crea una nueva matriz
pisadiana2<-na.omit(pisa)

#Se verifica que la nueva matriz de datos NO tenga valores perdidos
anyNA(pisadiana2)

head(pisadiana2)

#Comenzamos a trabajar con la nueva matriz de datos


#---------------------VARIABLE 26-------------------------


#Agrupamiento de items
names(pisadiana2) #Se identifica la variable con la que vamos a trabajar, de donde comienza y termina
items26<-pisadiana2[,18:24] #Se refleja en enviroment
head(items26[1:6,1:6])


#Nombramos las etiquetas de respuesta
levels(items26)<-c("Several times a day",
                  "Several times a week",
                  "Several times a month",
                  "Never or almost never",
                  "Don't know what it is")   

#Colocar los nombres a los indicadores
names(items26)<-c("Reading emails",
                  "Chat on line",
                  "Reading online news",
                  "Using an online dictionary or encyclopedia",
                  "Searching online information to learn about a particular topic",
                  "Taking part in online group discussions or forums",
                  "Searching for practical information online")


l26<-likert(items26) #Se refleja en enviroment


#Generamos las gráficas para observar los resultados obtenidos
#al aplicar la prueba Pisa en el item 26


#Gráfico de barras con porcentajes
install.packages("plyr")
library(plyr)

plot(l26,type="bar",centered=TRUE, plot.percents=TRUE)


#Gráfico de calor
plot(l26, type="heat")

