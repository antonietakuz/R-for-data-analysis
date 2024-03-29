
################
# LABORATORIOS 2
################

# LABORATORIO 2.1

# Importar el archivo llamados_107_covid.csv desde la carpeta en la que se encuentre.
# Inspeccionar el archivo.

### SOLUCION LABORATORIO 2.1 ----
library(tidyverse)
library(readr)
Datos <- read_csv("llamados_107_covid.csv")
View(llamados_107_covid)
head(Datos)

Datos <- llamados_107_covid
# LABORATORIO 2.2

#Calcular el promedio de la variable "COVID_LLAMADOS".
#Crear una nueva variable llamada Mayor_promedio:
#Mayor_promedio: Toma valor 1 si la variable "COVID_LLAMADOS" es superior al promedio o 0 en
#otro cosa.
#Si es necesario, investigar c�mo funciona la funci�n ifelse()

### SOLUCION LABORATORIO 2.2 ----

mean(Datos$COVID_LLAMADOS)

Datos$Mayor_promedio = ifelse(Datos$COVID_LLAMADOS>443.92,1,0)

Prom <- mean(Datos$COVID_LLAMADOS)
Datos$Mayor_promedio1 = ifelse(Datos$COVID_LLAMADOS>Prom,1,0)

Datos$COVID_LLAMADOS>443.92

# LABORATORIO 2.3
#Filtrar el conjunto por esta nueva variable. Cuantos registros se obtuvieron?
#Investigar si hay valores faltantes en alguna columna.

### SOLUCION LABORATORIO 2.3 ----

Datos_1 = Datos %>% filter(Mayor_promedio==1) %>% filter(CASOS_DERIVADOS>4)
Datos_2 = filter(Datos,Mayor_promedio==1)
Datos_3 = Datos %>% filter(Mayor_promedio==1 & CASOS_DERIVADOS>4) 

Datos_4 = Datos %>% filter(Mayor_promedio==0)
nrow(Datos_1)

is.na(Datos_1)


# LABORATORIO 2.4
#Calcular el promedio de llamados para los 2 valores de la variable "Mayor_promedio".
#Crear un dataset llamado Datos_2 que contenga solo los casos donde el total de sospechosos sea
#mayor a 25 y que contenga las columnas COVID_LLAMADOS, CASOS_DESCARTADOS_COVID y
#CASOS_TRASLADADOS

### SOLUCION LABORATORIO 2.4 ----

w <- Datos %>% group_by(Mayor_promedio) %>% summarise(Media = mean(COVID_LLAMADOS))

Datos_5 <- Datos %>% filter(CASOS_SOSPECHOSOS>25) %>% select(CASOS_SOSPECHOSOS,COVID_LLAMADOS, CASOS_DESCARTADOS_COVID,
                                                             CASOS_TRASLADADOS)
# LABORATORIO 2.5

#Crear una nueva variable usando la variable CASOS_SOSPECHOSOS, que tenga 3 categor�as
#(crear a propio criterio los cortes para determinar las categor�as):
#Alto
#Medio
#Bajo
#Cuantos llamados hubo en total en cada categor�a?

### SOLUCION LABORATORIO 2.5 ----

Datos3 <- Datos %>% mutate(SOSPECHOSOS_CAT = case_when(
  CASOS_SOSPECHOSOS <= 25 ~ "Bajo",
  CASOS_SOSPECHOSOS <= 60 ~ "Medio",
  CASOS_SOSPECHOSOS > 60 ~ "Alto"))

Datos3 %>% group_by(SOSPECHOSOS_CAT) %>% summarise(Total_llamados = sum(COVID_LLAMADOS))





