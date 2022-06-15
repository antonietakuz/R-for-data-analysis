########################
#JUNTAR DOS DATA FRAMES
########################

# Unir Columnas con CBIND

Datos_1=data.frame(
  id=c(1:10),
  Nombre=c("Juan", "Clara", "David", "María", "Pedro", "Claudia", "Martín", "Ignacio", "Jose", "Lucas" ))
Datos_2=data.frame(  Edad=c(20, 32, 18, 26, 38, 52, 19, 31, 29, 60 ),
                     Peso=c(68, 42, 70, 47, 76, NA, 71, 83, 69, 92))


cbind(Datos_1,Datos_2)
Datos_3 <- cbind(Datos_1,Datos_2)


# Unir Filas con RBIND

Datos_1=data.frame(
  id=c(1:10),
  Nombre=c("Juan", "Clara", "David", "María", "Pedro", "Claudia", "Martín", "Ignacio", "Jose", "Lucas" ))
Datos_4=data.frame(
  id=c(11,12,13),
  Nombre=c("Ximena","Bruno","Silvina"))

Datos_5 <- rbind(Datos_1,Datos_4)


# JOINS O MERGE

#Definimos los data frame
Datos_6=data.frame(
  Id=c(1:6),
  Nombre=c("Juan", "Clara", "David", "María", "Pedro", "Claudia")
)
Datos_7=data.frame(
  Id=c(1,2,5,6,8,9),
  Edad=c(20,32,38,52,31,29)
)


# Inner join

Datos_8 <- inner_join(Datos_6, Datos_7, by="Id")


#Leftjoin
Datos_9 <- left_join(Datos_6, Datos_7, by="Id")

#Right join
Datos_10 <- right_join(Datos_6, Datos_7, by="Id")

#Full join
Datos_11<-full_join(Datos_6, Datos_7, by="Id")

#RESTRUCTURACION DE ESQUEMA DE DATOS

library(tidyverse)
data <- data.frame(alumno=c(1:4),nota1=c(10,9,7,6),nota2=c(3,5,8,9))
x <- gather(data,nota1,nota2,key='exa',value='nota')
y <- spread(x,exa,nota)



