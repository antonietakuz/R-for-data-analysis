#############################
#VISUALIZACION DE DATOS CON R
#############################

#Para hacer estos gráficos vamos a utilizar los datos que 
#vienen en R llamados Iris. Primero visualizamos como esta 
#compuesto este conjunto de datos

Datos<-iris
head(Datos)
tail(Datos)

#GRAFICO DE DISPERSION O SCATTER PLOT

#En primer lugar podemos recurrir a la función plot 
#que no requiere ninguna libreria

plot(Datos$Sepal.Length,Datos$Sepal.Width)


#ScatterPlot con ggplot

library(tidyverse)

ggplot(data=Datos, aes(Sepal.Length,Sepal.Width))+
  geom_point()

ggplot(data=Datos)+
  geom_point(aes(x=Sepal.Length,y=Sepal.Width))

#Aumentar el tamaño de los puntos

ggplot(data=Datos)+
  geom_point(aes(x=Sepal.Length,y=Sepal.Width),size=3)


#Aumentar el tamaño de los puntos pero por medio 
#de una tercer variable (notar que esta adentro del aes)

ggplot(data=Datos)+
  geom_point(aes(x=Sepal.Length,y=Sepal.Width,size=Petal.Length))


#Cambiar el color

ggplot(data=Datos)+
  geom_point(aes(x=Sepal.Length,y=Sepal.Width),
             size=3, color="#6439ff")



#Utilizar el color pero por una variable

ggplot(data=Datos)+
  geom_point(aes(x=Sepal.Length,y=Sepal.Width,color=Species),
             size=3)
#Podemos personalizar el color de la leyenda
ggplot(data=Datos)+
  geom_point(aes(x=Sepal.Length,y=Sepal.Width,color=Species),
             size=3)+ scale_colour_manual(values = c("red","blue", "green"))


#Darle un poco de transparencia a los puntos (este parametro alpha varia entre 0 y 1)

ggplot(data=Datos)+
  geom_point(aes(x=Sepal.Length,y=Sepal.Width,color=Species),
             alpha = 1, size=2)


#Podemos usar una variable categórica para q haga un grafico 
#para cada una de sus categorias

ggplot(data=Datos)+
  geom_point(aes(x=Sepal.Length,y=Sepal.Width),
             alpha = .4, size=3)+
  facet_wrap(~Species)

# Con el parametro shape cambiamos el tipo de forma 
#para representar a las observaciones

ggplot(data=Datos)+
  geom_point(aes(x=Sepal.Length,y=Sepal.Width,color=Species),
             alpha = 1, size=3, shape=9)

ggplot(data=Datos)+
  geom_point(aes(x=Sepal.Length,y=Sepal.Width,color=Species),
             alpha = 1, size=3, shape="%")

#Con el parametro shape cambiamos el tipo de forma para representar a las observaciones

ggplot(data=Datos)+
  geom_point(aes(x=Sepal.Length,y=Sepal.Width,color=Species,shape=Species),
             alpha = .8, size=3 )

#Cambiar titulos

ggplot(data=Datos)+
  geom_point(aes(x=Sepal.Length,y=Sepal.Width,color=Species),
             alpha = .4, size=3)+
  labs(x="Long Sepalo",  y="Ancho Sepalo",color="Leyenda")

#GRAFICO DE BARRAS CON GGPLOTT2

#Para armar el gráfico de barras, vamos primero a recurrir a agrupar por Specie
#y calcular la suma de la variable Sepal Length

Datos_agrupados<-Datos%>%
  group_by(Species)%>%
  summarise(Suma_SepalLength=sum(Sepal.Length))
head(Datos_agrupados)

#Una vez obtenidos los datos los podemos graficar


ggplot(data=Datos_agrupados)+
  geom_bar(aes(x=Species,weight=Suma_SepalLength))

#Igual que antes le podemos dar color


ggplot(data=Datos_agrupados)+
  geom_bar(aes(x=Species,weight=Suma_SepalLength),
           fill="green")

ggplot(data=Datos_agrupados)+
  geom_bar(aes(x=Species,weight=Suma_SepalLength),
           fill="green", color="red")


ggplot(data=Datos_agrupados)+
  geom_bar(aes(x=Species,weight=Suma_SepalLength),
           fill=c("red","blue","green"),color="black")


#HISTOGRAMAS DE FRECUENCIAS CON GGPLOTT2

#Volvemos al dataset original y 
#graficamos el histograma para la variable Sepal Length

ggplot(data=Datos)+
  geom_histogram(aes(x=Sepal.Length))

#Podemos nosotros asignales la cantidad de intervalos que queremos

ggplot(data=Datos)+
  geom_histogram(aes(x=Sepal.Length),
                 bins=12,color="black")

#Le damos Color

ggplot(data=Datos)+
  geom_histogram(aes(x=Sepal.Length),
                 fill="blue",alpha=.4,color="blue",
                 bins=15)

ggplot(data=Datos)+
  geom_histogram(aes(x=Sepal.Length),
                 fill="blue",alpha=.4,
                 bins=15, color="black")

