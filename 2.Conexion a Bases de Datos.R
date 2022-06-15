################################
# CONEXION CON BASE DE DATOS
###############################

#Se debe crear una conexion ODBC desde su maquina,
#donde previamente a descargado el conector correspondiente a su BD.

# Instalar el paquete RODBC

install.packages("RODBC")

# Activar el paquete RODC

library(RODBC)
# Establecer conexion y ejecutar sentencia SQL
con <- odbcConnect("CURSOR2",uid = 'sa',pwd = 'Burbuja42!')

tabla_productos1 <- sqlQuery(con,"select ProductId,ProductName from products")  


