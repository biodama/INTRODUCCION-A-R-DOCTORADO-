

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

# Acceso a elementos

tabla1 <- data.frame (var1=c(4,5,3),
var2=c("a","b","c"), 
var3 = c("gen1","gen2", "gen3" ))

tabla1$"var3"
tabla1[ , c(3)]




tabla1$"var3"[c(1)]
tabla1[ c(2,3), c(2,3)]


subtabla <- tabla1[ c(2,3), c(2,3)]

#importación
#ruta absoluta
read.table(file="C:\\Users\\mario.gonzalez\\Desktop\\INTRODUCCION-A-R-DOCTORADO--main\\datos\\datos.curso1.txt", header = TRUE, sep= "\t")
read.table(file="C:/Users/mario.gonzalez/Desktop/INTRODUCCION-A-R-DOCTORADO--main/datos/datos.curso1.txt", header = TRUE, sep= "\t")

#ruta relativa cambiando el directorio de trabajo
read.table(file="datos.curso1.txt", header = TRUE, sep= "\t")

#creacción de objeto con los datos contenidos en datos.curso1.txt
mis_datos <- read.table(file="datos.curso1.txt", header = TRUE, sep= "\t")

#cargar uno o varios objetos contenidos en este RData
load(file="datos.curso1.RData")

#importar dataframe desde un paquete
install.packages("airqualityES")
library("airqualityES")

#importa la base de datos del paquete airqualityES a nuestra sesión de R
data(airquality)

#visualiza los primeros 5 registros por arriba
head(airquality)

#visualiza los primeros 5 registros por arriba
tail(airquality)

#muestra las dimensiones de la base de datos
dim(airquality)

#Exportación de un data.frame
write.table(x=airquality, file="aiquality.exportado.txt",sep="\t",row.names=F,quote=F)

#Exporta todo el workspace. En este caso 3 objetos en un unico fichero RData.
save.image(file = "un_fichero_con_3_objetos.RData")
