

1+1
1/2

?rnorm
?rnor

install.packages("randomForest")

library("randomForest")
require("randomForest") # es lo mismo

ls() # listar los nombres de los objetos que tenemos cargados en la sesion

###############################
####### Tipos de objetos ######
###############################

# Vector

# Creacion NOMBRE <- c(,,,,,,,,,,,,,)

x <- c(1,2,3,4)
y <- c("a","g","t","r")
z <- c("a","g",1,2)


# Data.frame

tabla1 <- data.frame (var1=c(4,5,3),
var2=c("a","b","c"), 
var3 = c("gen1","gen2", "gen3" ))

tabla2 <- data.frame(c(4,5,3) , c("a","b","c") , 
c("gen1","gen2","gen3"))

x <- c(1,2,3,4)
y <- c("a","g","t","r")
z <- c("a","g",1,2)
tabla3 <- data.frame(x,y,z)


pab1 <- c(1,2,3) ; pab2<-c("a","b","c")

# Recodificacion nombre de variable
names(tabla3)
names(tabla3)[1] 
names(tabla3)[1] <- c("ID")

# Borrar objetos de la sesion

ls()

rm(tabla1)

rm(tabla2,tabla3)

rm(tabla1)

rm(list=ls()) # para borrar todos los objetos de la sesion
gc()


######################
# Atributos objetos
######################

# Si es vector

x <- c(1,2,3,4)
class(x)
length(x)

# Si es data.frame

tabla1 <- data.frame (var1=c(4,5,3),
var2=c("a","b","c"), 
var3 = c("gen1","gen2", "gen3" ))
class(tabla1)
dim(tabla1) # numero de filas  numero de columnas
str(tabla1) # si no es muy grande


# Cambio de formato de vectores

v1 <- c(1,2,3,4,5)
v2 <- as.character(v1)

v3 <- c("a","b","c")
v4 <- as.numeric(v3)

edad <- c(1,2,3,"+100",">50")
edad_numerica <- as.numeric(edad)

#############################################
# Checks

ls()
rm()

############################################



