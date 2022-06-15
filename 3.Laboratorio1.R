################
# LABORATORIOS 1
################

# LABORATORIO 1.1
#Crear el vector:
#Vector_1=c(25,12,32,8,9,75,23,41)
#Aplicar las siguientes funciones:
# sum()
# min()
# max()
# mean()
# length()

### SOLUCION LABORATORIO 1.1 ----

Vector_1=c(25,12,32,8,9,75,23,41)

class(Vector_1)

sum(Vector_1)

min(Vector_1)

max(Vector_1)

mean(Vector_1)

length(Vector_1)


# LABORATORIO 1.2
#Cargar los siguientes vectores y formar un data.frame llamado "Datos":
#Nombres=c("Ximena";"Pedro","Juan","Jose","Marcos","Ana","Daniel","Maria","Pablo","Paola")
#Salto_1=c(110,108,109,107,118,115,127,118,104,109)
#Salto_2=c(109,108,110,117,107,107,116,115,108,119)
#Salto_3=c(110,109,108,108,106,117,118,106,105,118)

### SOLUCION LABORATORIO 1.2 ----

Datos = data.frame(Nombres = c("Ximena","Pedro","Juan","Jose","Marcos","Ana","Daniel","Maria","Pablo","Paola"),
                   Salto_1=c(110,108,109,107,118,115,127,118,104,109),
                   Salto_2=c(109,108,110,117,107,107,116,115,108,119),
                   Salto_3=c(110,109,108,108,106,117,118,106,105,118))


# LABORATORIO 1.3
#Calcular el promedio de la distancia de los saltos para todos los alumnos por salto.
#Crear una columna llamada Total, que sea las sumas de cada salto.

### SOLUCION LABORATORIO 1.3 ----

mean(Datos$Salto_1)
mean(Datos$Salto_2)
mean(Datos$Salto_3)


Datos$Total = Datos$Salto_1 + Datos$Salto_2 + Datos$Salto_3


# LABORATORIO 1.4
#Crear la siguiente lista:
# Lista_1<-list(c(1:10),c("Alto","Medio","Bajo"),Datos)
#Mostrar el segundo elemento de la lista y calcular cuántos registros tiene.
#Guardar el tercer elemento de la lista en un dataframe llamado Datos_2.


### SOLUCION LABORATORIO 1.4 ----

Lista_1<-list(c(1:10),c("Alto","Medio","Bajo"),Datos)

Lista_1[2]

length(Lista_1[[2]])

Datos2 <- data.frame(Lista_1[3])


# LABORATORIO 1.5

#Correr la siguiente sintaxis
# Datos_CO=iris
# -Visualizar los 10 primeros registros
# -Cuantos registros tiene el conjunto Datos_CO? Y columnas?
# -Cuantos valores distintos toma la columna "Species"? Qué tipo de dato es?


Datos_CO = iris

head(Datos_CO,10)

nrow(Datos_CO)

ncol(Datos_CO)

unique(Datos_CO$Species)

class(Datos_CO$Species)






