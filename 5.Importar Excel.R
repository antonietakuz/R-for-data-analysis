####################################
# IMPORTAR EXCEL CON PAQUETE readxl
####################################
#####################################
# 1. Que necesitas antes de empezar #
#####################################

# instalar paquete readxl
install.packages("readxl")

# cargar paquete readxl
library(readxl)
library(tidyverse)

# buscar la ruta del archivo de excel
file.choose()

ruta_excel <- "C:\\Users\\luisj\\OneDrive\\Material de EDUCACION IT\\ANALISIS DE DATOS CON R\\12.ADR A DISTANCIA-07-12-2021\\Clase 2-ADR-09-12-2021\\Poblacion Mundial.xlsx"

#####################################
# 2. importar excel con código de R #
#####################################

# importar caso ideal
#Datos en hoja1, celda A1
caso_ideal <- read_excel(ruta_excel)
caso_ideal1 <- read_excel("Poblacion Mundial.xlsx")

# importar caso medio
#Datos en hoja2, celda A1
caso_medio <- read_excel(ruta_excel,sheet='Prueba')
caso_medio2 <- read_excel(ruta_excel,sheet=2)

# importar caso dificil
#Datos en hoja3, y no esta celda A1
caso_dificil <- read_excel(ruta_excel,sheet='Hoja3', range = "c3:g10")


library(readxl)
Poblacion <- read_excel("Poblacion Mundial.xlsx", 
                        sheet = "Prueba")
View(Poblacion)
