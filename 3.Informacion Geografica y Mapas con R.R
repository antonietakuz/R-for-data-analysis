##################################
# INFORMACION GEOGRAFICA Y MAPAS
##################################

# R maneja distintas formas de analizar los datos espaciales. 
# Esto difiere según la librería con la que se trabaje. 
# Para esta clase, vamos a trabajar principalmete con los radios censales 
# que se pueden descargar de la web. 
# El readio censal, es una unidad geográfica que agrupa, 
# en promedio 300 viviendas en las ciudades. 
# Si los radios son rurales o rurales mixtos, 
# la cantidad promedio es menor.


library(tidyverse)
library(sf)

radios <- st_read("https://bitsandbricks.github.io/data/CABA_rc.geojson")
hospitales <- st_read("https://cdn.buenosaires.gob.ar/datosabiertos/datasets/salud/hospitales/hospitales.geojson")


# GRAFICOS CON ggplott

#Una vez imporatdo los datos los podemos graficar con la siguiente función

ggplot() + 
  geom_sf(data = radios)

#Podemos cambiar el color de las líneas
ggplot() + 
  geom_sf(data = radios,color="red")


#Si tenemos alguna variable q mida algo dentro de cada polígon, 
#podemos colorear los distintos polígonos.

ggplot() + 
  geom_sf(data = radios,aes(fill=POBLACION))

#Para quitarle los bordes
ggplot() + 
  geom_sf(data = radios,aes(fill=POBLACION),color=NA)

#Podemos cambiar la paleta de colores
ggplot() + 
  geom_sf(data = radios,aes(fill=POBLACION),color=NA)+
  scale_fill_gradient(low = "#56B1F7", high = "#132B43") 

