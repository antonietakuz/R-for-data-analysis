####################
# OPERADOR PIPE
####################

#Manipulando datos con el Operador Pipe %>%
#El operador pipe es muy util, ya que podemos aplicar una secuencia de funciones, 
#sin renombrar el conjunto de datos

library(tidyverse)
Datos=data.frame(
  id=c(1:10),
  Nombre=c("Juan", "Clara", "David", "María", "Pedro", "Claudia", "Martín", "Ignacio", "Jose", "Lucas" ),
  Edad=c(20, 32, 18, 26, 38, 52, 19, 31, 29, 60 ),
  Peso=c(68, 42, 70, 47, 76, NA, 71, 83, 69, 92),
  Sexo=c("M","F","M","F","M","F","M","M","M","M")
)


select(Datos,id,Nombre,Peso)
filter(Datos,Edad<60)
group_by(Datos,Sexo)

z <- Datos%>% #Nombramos el conjunto de datos con el que queremos trabajar
  select(Nombre, Edad,Sexo) %>%  #Seleccionamos las columnas
  filter(Edad<60)%>% #Filtramos por edad<60
  group_by(Sexo) %>%  #Agrupamos por sexo
  summarise(Edad_promedio=count(Edad)) #Calculamos la edad promedio para cada sexo



Datos %>% select(id,Nombre,Peso)
Datos %>% filter(Edad>=60)

Datos %>% 
  select(id,Nombre,Peso,Edad)%>% 
  filter(Edad<60)


?count()



