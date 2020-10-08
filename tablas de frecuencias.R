#1.- Leer la matriz de datos
date(iris)

#2.-Visualizamos las especies de la matriz iris
#1.2.-Exploración de la matriz de datos
#nombres de las variables
  #(SL) Sepal.Length = Largo del sépalo
  #(SP) Sépalo.Width = Ancho del sépalo
  #(PL) Pétalo.Length = Longitud del pétalo
  #(PW) Pétalo.Width = Ancho del pétalo
  # Species = Versicolor, Setosa, Virginica
names(iris)

#dimensión de la matriz (cuantas observaciones y
#variables contiene)
dim(iris)

#tipo de variable
   #caracter (chr)-> letras
   #numerico (num)-> continua
   #entero (int)-> entero / discreta
   #lógico (registro)-> Falso, Verdadero
   #complex (com)-> número complejo ejemplo:3i
str(iris)

#detecta si hay valores perdidos
anyNA(iris)

#Visualizamos las especies variables de la matriz iris
iris$Species

#3.- Agrupamos los valores para la variable Petal.length
#2.- Revisamos el tipo de matriz de datos 
   # Vector -> función c ()
   # Lista
   # Matriz
   # factor
   # Date frame (tabla que contiene datos de tipo numéricos,
            #factor y caracter)
typeof(iris)

#3.- Convertimos la matriz de datos en un data frame y después
    #Agrupamos los valores para la variable Pétalo.
    # y se calcula la frecuencia absoluta.
tabla_PL<-as.data.frame(table(PL=iris$Petal.Length))

#4.- Mostramos la tabla de contingencia para la variable PL
   # con su respectiva frecuencia absoluta.
tabla_PL

# 5.- Se construye la tabla de frecuencias completas redondeando las frecuencias
      #absolutas a 3 decimales 
# 5.- Se construye la tabla de frecuencias completas redondeando
# las frecuencias anbsolutas a 3 decimales
transform(tabla_PL,
          freqAc=cumsum(Freq),
          Rel= round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))

#6.- agruparemos las variables en 10 clases y se calcula la frecuencia absoluta 
tabla_clases<-as.data.frame(table(Petal.length=factor(cut(iris$Petal.Length,breaks = 9))))

#6.- Agrupamos las variables en 10 clases y se 
#calcula la frecuencia absoluta 

tabla_clases<-as.data.frame(table
                            (Petal.Length=factor
                              (cut(iris$Petal.Length,
                                   breaks = 9))))
#7.- Visualizamos la tabla de clases
tabla_clases
                              
                            )
          