

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
############################################

tabla1 <- data.frame (var1=c(4,5,3),
var2=c("a","b","c"), 
var3 = c("gen1","gen2", "gen3" ))

tabla1$"var3"
tabla1[ , c(3)]




tabla1$"var3"[c(1)]
tabla1[ c(2,3), c(2,3)]


subtabla <- tabla1[ c(2,3), c(2,3)]

################################################
# Importación
################################################

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


################################################
# Exportacion
################################################

#Exportación de un data.frame
write.table(x=airquality, file="aiquality.exportado.txt",sep="\t",row.names=F,quote=F)

#Exporta todo el workspace. En este caso 3 objetos en un unico fichero RData.
save.image(file = "un_fichero_con_3_objetos.RData")


############################################
# Acceso a elementos (continuacion)
############################################

rm(list=ls()) # Para borrar todos los objetos que hay en el workspace
gc()

setwd("/Users/pfernandezn/Desktop/INTRODUCCION_R_DOCTORADO/DATOS/")
# El ordenador del profesor (Pablo) es mac

load("datos.curso1.RData")

ls() # se carga un objeto llamado datos

class(datos)
dim(datos)
names(datos)
str(datos)

datos$"sexo"
datos[   ,  c(3) ]

sexo.var <- datos$"sexo"
ls()
rm(sexo.var)
ls()

# Sub-bases de datos (basicos)

table(datos$"sexo") # para conocer los valores de sexo
unique(datos$"sexo") # para conocer los valores de sexo
table(datos$"estado.civil")
unique(datos$"estado.civil")

datos.mujer <- datos[ datos$"sexo"=="Mujer" ,     ]  # Base de datos con todas las variables solo con las mujeres

datos.mujer.small <- datos.mujer[    ,  c(1,2,3)  ] # la base de datos anterior solo con tres variables concretas
datos.mujer.small <- datos.mujer[    ,  c("ID","edad","sexo")  ]
datos.mujer.small <- datos.mujer[    ,  c("sexo","ID","edad")  ]

datos.mujer <- datos[  datos$"sexo"=="Mujer" ,  c("ID","edad","sexo")    ] 
ls()

datos.mujer.casada <-  datos[  datos$"sexo"=="Mujer"    &   datos$"estado.civil"=="Casado" ,     ]
datos.mujer.casada <-  datos[  datos$"sexo"%in%"Mujer"    &   datos$"estado.civil"%in%"Casado" ,     ]

# Recodificacion de un valor o valores en una variable
# ACCESO A ELEMENTO <- VALOR

datos[  datos$"ID"==200   ,  c("sexo")   ] 

datos[  datos$"ID"==200   ,  c("sexo")   ] <- "Mujer"    # el participante ID 200 es mujer

unique(datos$"estado.civil")
datos[  datos$"estado.civil"=="Casado"   ,  c("estado.civil")   ] <- "cas" 
unique(datos$"estado.civil")

############################
# Añadir variables (columnas)
############################

# Añadir una variable pero que sea un campo calculado a partir de otras ya existentes

names(datos)
datos$"ratio" <- datos$"edad" / datos$"peso"


##################################################################
##################################################################

###################
# Visualizacion
###################

head(datos)
tail(datos)

fix(datos) # CUIDADOOOOOOO!!!!!!!!


#############################################
# Otras cosas
#############################################

# Subset

datos.mujer <- datos[datos$sexo=="Mujer" , c("ID","edad","sexo")]

datos.mujer<-subset(datos , sexo=="Mujer", select=c("ID","edad","sexo"))

# names

names(datos)[c(3)] <- "sex"

# row.names

row.names(datos.mujer) <- NULL # reinicia los indices de los row.names, recomendable cuando hacemos subsets


#############################################
# Operaciones aritmeticas
#############################################

datos$BMI <- datos$"peso" / (datos$"altura" / 100)^2

mean(datos$"edad")

mean(c(0,1,2,3,4,NA),na.rm=TRUE)

#############################################
# Operaciones logicas
#############################################

datos[  datos$"estado.civil"=="cas"   ,  c("estado.civil")   ] <- "Casado"
 
datos_no_casados <- datos[datos$"estado.civil"!="Casado" ,  ]
head(datos_no_casados)
unique(datos$"estado.civil")

#############################################
# Secuencias aleatorias y no aleatorias
#############################################

sample(1:1000,100) # no basada en distribucion

rnorm(1000) # basada en distribucion normal

c(1,2,3)

c(1:3)

seq (from=1,to=10,by=2)

rep(1,100)
rep("Madrid",100)

datos$"provincia"<-rep("Madrid",200)
datos$"provincia"<-"Madrid"


#############################################
# Missing (es muy especial)
#############################################

NA

sum(is.na(datos$"sexo")) # para todo tipo de variables
unique(datos$"sexo") # para variables character o factor

sum(is.na(c(1,4,4,NA,12,NA,0,2)))

# nos puede afectar en los subsets
# funciones estadisticas como la media

colSums(is.na(datos)) # numero de missing por variable
sum(is.na(datos))

datos$"sexo"[c(1,3,11)] <- NA
sum(is.na(datos$"sexo"))

datos$"edad"[c(4,7,30)] <- NA
sum(is.na(datos$"edad"))

# quiero quedarme solo con los registros que no tengan missing en sexo y edad

datos_sin_missing <- datos[ !is.na(datos$"sexo") & !is.na(datos$"edad")   ,     ]


#############################################
# Ordenacion
#############################################

datos_ordenados <- datos_sin_missing [ order(datos_sin_missing$"ID")  ,           ]
datos_ordenados <- datos_sin_missing [order(datos_sin_missing$"sexo",datos_sin_missing$"estado.civil") ,  ]
