#################
# VECTORES EN R
#################
# Los vectores son de una sola dimension.
# Los componentes de los vectores tienen que ser del mismo tipo de datos.
# El comando utilizado para crearlos es "c(componente 1, componente 2,....n)

edad <- c(14,15,17,19)
nombre <- c("Jose", "Carlos", "Linda","Paola")
sexo <- c("Masculino","Masculino","Femenino","Femenino")
nota1 <- c(90,75,81,93)

class(edad)

# Si se trata de crear vectores con tipos de datos diferentes, 
# R los coerciona al formato que puedan tener todos

diferente <- c(1,"Ana",TRUE)

diferente

diferente2 <- c(1,TRUE,FALSE)

diferente2


# Calculos con Vectores

nota1 <- c(90,75,81,93)
nota2 <- c(100,130,98,65)

nota1+nota2
nota3 <- nota1+nota2

# Los vectores con diferentes cantidades de elementos
# se pueden sumar si sus elementos son multiplos
nota4 <- c(90,75,81,93)
nota5 <- c(100,130)

nota4+nota5

nota6 <- c(90,75,81)
nota7 <- c(100,130)

nota6+nota7

nota2 <- nota2*1.3


# Seleccion de elementos de un vector

nota1[1]
nota1[3]
nota1[2:3]
nota2[4]

# Verifica si los componentes de un vector cumple cierta condicion

notas_altas <- nota1>=90
notas_altas

###############################
# FACTOR
##############################

# Se usa para variables categoricas
# Hay dos tipos de variables categoricas nominal y ordinal
# Para crear los factores se usa el comando "factor"

# NOMINAL

alumno <- c("Zara", "Luis","Ana","Federico", "Carla")
alumno
alumno_factor <- factor(alumno)
alumno_factor

# Revisando la estructura del vector creado para entender
str(alumno_factor)

# ORDINAL
# Para factores de tipo ordinal hay que agregar otros argumentos

ingreso <- c("Bajo","Alto","Mediano","Bajo")
ingreso_factor <- factor(ingreso,ordered = TRUE,levels = c("Bajo","Mediano","Alto"))
ingreso_factor
summary(ingreso_factor)
ingreso_factor[1]>ingreso_factor[3]



