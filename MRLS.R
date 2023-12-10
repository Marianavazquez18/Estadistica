# Modelo de Regresión lineal simple

## Lectura de matriz de datos


#1.- Exportar la matriz penguins.xlsx

#1.1.- Instalación de paquetería

install.packages("readxl")


# 1.2.- Abrir librería 

library("readxl")


# 1.3.- Exportación de la matriz de datos 

penguins<-read_excel("penguins.xlsx")


# 2.- Exploración de la matriz

# 2.1.- Dimensión de la matriz

dim(penguins)


# 2.2.- Nombre de las columnas

str(penguins)


# 2.3.- Tipo de variables

colnames(penguins)


# 2.4.- En busca de datos perdidos

anyNA(penguins)


## Configuración de la matriz

# 1.- Visualización de las columnas: *especie, isla, género y año*
  
# 1.1.- Especie


penguins$especie


#1.2.- Isla

penguins$isla


# 1.3.- Género

penguins$genero


# 1.4.- Año

penguins$año



# 2.- Convertir las variables categóricas a factores

# 2.1.- Especie

penguins$especie<-factor(penguins$especie, 
                         levels=c("Adelie", "Gentoo", "Chinstrap"))


# 2.2.- Isla

penguins$isla<-factor(penguins$isla, 
                      levels=c("Torgersen", "Biscoe", "Dream"))

# 2.3.- Género

penguins$genero<-factor(penguins$genero, 
                        levels=c("male", "female"))


# 2.4.- Año

penguins$año<-factor(penguins$año, 
                     levels=c("2007", "2008", "2009"))


# 3.- Visualizar el tipo de variables que tenemos ahora 


str(penguins)

## Selección de variables

# 1.- Se seleccionarán los datos de la especie gentoo y se crea una nueva matriz llamada "gentoo"


# 1.1.- Se selecciona la variable tomada de la matriz original 


penguins$especie


# 1.2.- Se seleccionan los datos con los que se quieren trabajar y las variables numéricas que se ocuparán : largo del pico, grosor del pico, largo de la aleta y masa corporal. 


gentoo<-penguins[153:176,c(4,5,6,7)]


##   Gráfico de dispersión

# 1.- Mediante la función *pairs* se creará un gráfico de dispersión para visualizar nuestra nueva matriz 


pairs(gentoo)



## Cálculo de la correlación de Pearson

# Mediante la función *cor*, se calcula la correlación de Pearson


cor(gentoo)


## Gráfico de dispersión con línea de regresión

# 1.- Se instala la paquetería *ggplot2* y la librería


# 1.1.- Instalamos la paquetería "ggplot2"

install.packages("ggplot2")


#1.2.- Abrimos librería

library(ggplot2)


# 2.- Se generará un gráfico de dispersión en donde se muestre la línea de regresión. 


# 2.1.1.- El primer objeto se llamará MRL, se ocuparán las variables: *masa corporal* y *largo del pico. Mediante la función **ggplot*, creará el gráfico: 
  

MRL<-ggplot(gentoo, aes(x=masa_corporal_g, y=largo_pico_mm))+
  geom_point()+
  geom_smooth(method = "lm", formula=y~x, col="dodgerblue1")+
  ggtitle("Modelo de Regresión Lineal Simple")+
  xlab("Masa corporal (gr)")+
  ylab("Largo del pico (mm)")+
  theme_light()


# 2.1.2.- Se visualiza el objeto para verificar

MRL


# 2.1.1.- El segundo objeto se llamará MRL2, se ocuparán las variables: *largo de la aleta* y *grosor del pico*.


MRL2<-ggplot(gentoo, aes(x=largo_aleta_mm, y=grosor_pico_mm))+
  geom_point()+
  geom_smooth(method = "lm", formula=y~x, col="cyan")+
  ggtitle("Modelo de Regresión Lineal Simple")+
  xlab("Masa corporal (gr)")+
  ylab("Largo del pico (mm)")+
  theme_light()


# 2.1.2.- Visualización el objeto

MRL2


##  Cálculo y representación de la recta por mínimos cuadrados


#1.- Con la función *lm* se calcularán datos como: el intercepto, el error, el valor crítico p-valor, entre otros 


# 1.1.1.- Primer modelo, se ocupan las variables *largo del pico* y *masa corporal*
  

regresion<-lm(gentoo$largo_pico_mm~gentoo$masa_corporal_g, 
              data=gentoo)

# 1.1.2.- Se visualiza el objeto

summary(regresion)


# 1.2.1- Segundo modelo, ocupando las variables *largo de la aleta* y *grosor del pico*
  
  
regresion2<-lm(gentoo$largo_aleta_mm~gentoo$grosor_pico_mm, 
               data=gentoo)


# 1.2.2.- Visualización el objeto

summary(regresion2)

##  Coeficiente de Correlación de Pearson (r)

#1. Con la función *sqrt* se saca la raíz cuadrada del dato *Multiple R-squared* para sacar el valor del coeficiente de correlación de Pearson 

# 1.1.1.- r del largo del pico y la masa corporal


r1<- sqrt(0.5456)


# 1.1.2 Se visualiza el objeto

r1


#1.2.1 r del largo de la aleta y el grosor del pico


r2<-sqrt(0.4805)


# 1.2.2 Visualización del objeto

r2
