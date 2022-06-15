#############################################
# VARIABLES Y TIPOS DE DATOS QUE SOPORTA R
#############################################
# https://1drv.ms/u/s!Anh5cvrOJtUTipxVZeHfm8S5sTpZwg?e=emEynG

#Variables
a = 10
b <- 20
c <- a * b
a <- 100
a2 <- 34

34->x

Edad=80
edad<-70
# Los nombres de variables u objetos no deben comenzar con numeros

# R discrimina las mayusculas de minusculas, tambien se pueden asignar 
# a los obejtos con los signos "<-" o con el signo "=".

# El atajo de teclado en windows para agregar el simbolo "<-" es "Alt+-"

peso <- 100.50

# Para indicar el tipo de dato se utiliza el comando "class()"
class(Edad)
class(edad)
class(peso)

?class()

# Los datos tipo caracter (string o textos) se debe escribir entre "comillas"

nombre <- "Rafael"
class(nombre)

# Para datos de tipo Booleano (TRUE o FALSE),se deben escribir en letras mayusculas
# Tambien se pueden asignar solo con la inicial T o F, siempre en mayuscula.

casada <- TRUE
class(casada)

edad>20
Edad>100
Respuesta <- Edad>60

class(Respuesta)
