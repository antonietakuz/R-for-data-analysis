##############################
#DATA FRAMES
#############################

#CREACION DE DATA FRAME
# Para crear Data Frames en R, se utiliza el comando de funcion data.frame()

edades <- c(14,15,14,14)
nombres <- c("Jose", "Carlos","Linda","Paola")
sexo <- c("Masculino","Masculino","Femenino","Femenino")
notas <- c(90,75,NA,93)
notas2 <- c(89,80,92,95)
honor <- c(TRUE,FALSE,FALSE,TRUE)


estudiantes <- data.frame(edades,nombres,sexo,notas,notas2,honor)

estudiantes1 <- data.frame(sexo,notas,notas2,honor,edades,nombres)

str(estudiantes)

class(estudiantes)

# Inspeccionando un dataframe

head(estudiantes,2)
tail(estudiantes,2)


# Extraer algunos datos segun su ubicacion

estudiantes[3,2]
estudiantes[4,5]

estudiantes[2:4,]
estudiantes[3,1:2]
estudiantes[,"notas2"]

##############################
#VECTOR COLUMNA DEL DATAFRAME
##############################

# Para hacer referencia a una columna del dataframe, usamos dobles corchetes"[[]]" .

?mtcars
mtcars[[9]]

vehiculos <- mtcars

mtcars

# Tambien le podemos colocar el nombre de la columna

z <- mtcars[["am"]] 

class(mtcars[["am"]])

#Usando el simbolo "$" conjunto con el nombre de la column, en lugar de los doble corhetes

mtcars$am 

#Otra forma de hacerlo es con el arreglo tipico de fila y columna

mtcars[,"am"] 


