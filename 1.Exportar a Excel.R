##################################
# EXPORTAR EXCEL CON PAQUETE xlsx
##################################

# Exportar a csv

write.table(Poblacion_Mundial,"caso1.csv")

file.choose()

ruta <- "C:\\Users\\luisj\\OneDrive\\Material de EDUCACION IT\\ANALISIS DE DATOS CON R\\caso1.csv"

write.table(Poblacion_Mundial,ruta)

#Debemos tener instalado Java en nuestra computadora
###################################
# cargar paquete readxl
library(readxl)
library(tidyverse)
install.packages("rJava")
install.packages("xlsxjars")
install.packages("xlsx")
library(xlsx)


write.xlsx(Poblacion_Mundial, file = "datosRExcel1.xlsx", sheetName = "Detenciones")
