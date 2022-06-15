########################################
# LISTAS
########################################
# Se pueden crear listas con distintas estructuras de datos

un_vector <- 100:200
una_matriz <- matrix(1:12,ncol = 4)
un_df <- mtcars

mi_lista <- list(un_vector,una_matriz,un_df)

# Se pueden dar nombres a los elementos de la lista para su mejor comprension

mi_lista <- list(numero=un_vector,matriz=una_matriz,df=un_df)

# Seleccionamos elementos de la lista
mi_lista[[1]]
mi_lista$numero
mi_lista$numero[4]
mi_lista$df
mi_lista$df$mpg


class(mi_lista)


