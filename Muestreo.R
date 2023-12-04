# Muestreo aleatorio simple
# Generar número aleatorios para una muestra de 61 personas en una 
# población de 73 alumnas/os del 5to semestre de la LEP BENV.    
# Confiabilidad del 95% y 5% de error.
# x= del 1 al 73, que corresponde a la población.
# side= 61, que corresponde al tamaño de la muestra

# En este link se calculó la muestra:
# <https://www.macorr.com/sample-size-calculator.htm>

# Ejemplo 1
sample(1:73, 61, replace=FALSE)

# Ejemplo 2
sample(1:73, 61, replace=FALSE)

# Ejemplo 3 cambiando palabra TRUE
sample(1:73, 61, replace=TRUE)


# Ejercicios
# 1.1- Calcula el tamaño de muestra para una poblacion de 83 alumnas y alumnos que se encuentran en primer grado
# de la Licenciatura en Educación Primaria de la BENV.

# Muestra= 68 alumnas/os

# 1.2.- Una vez que obtengas el tamaño de la muestra, selecciona el número de lista de las personas que formaran
# parte de la muestra.

sample(1:83, 68, replace=FALSE)

# 1.3.- Crea un vector llamado muestra con los números de 
# lista de las personas que forman parte de la muestra.
# Forma larga: copiar y pegar después de poner las comas a 
# cada número.

muestra<-c(31,41,79,45,59,7,19,65,83,75,2,23,8,29,76,30,60,68,
           52,74,58,11,48,13,27,28,67,4,26,72,80,56,40,53,77,
           37,9,16,34,22,12,18,1,5,82,10,50,42,20,64,33,57,71,
           15,36,44,43,69,55,63,24,51,21,49,54,47,46,62)

# Forma corta: copiar y pegar la función y mostrar
muestra2<-sample(1:83, 68, replace=FALSE)

muestra2


# Muestreo estratificado

# Matrícula de la escuela Lázaro Cárdenas: 328

Primero:47

Segundo:58

Tercer:51

Cuarto:51

Quinto:61

Sexto:60

# Calcular la muestra por grado

# 1.Primer grado
# x= del 1 al 47, que corresponde a la población.
# side= 42, que corresponde al tamaño de la muestra

sample(1:47, 42, replace=FALSE)

# 2. Segundo grado
# x= del 1 al 58, que corresponde a la población.
# side= 51, que corresponde al tamaño de la muestra

sample(1:58, 51, replace=FALSE)

# 3. Tercer grado

# x= del 1 al 51, que corresponde a la población.
# side= 45, que corresponde al tamaño de la muestra

sample(1:51, 45, replace=FALSE)


# 4. Cuarto grado

# x= del 1 al 51, que corresponde a la población.
# side= 45, que corresponde al tamaño de la muestra

sample(1:51, 45, replace=FALSE)


# 5. Quinto grado

# x= del 1 al 61, que corresponde a la población.
# side= 53, que corresponde al tamaño de la muestra

sample(1:61, 53, replace=FALSE)


# 6. Sexto grado
# x= del 1 al 60, que corresponde a la población.
# side= 52, que corresponde al tamaño de la muestra

sample(1:60, 52, replace=FALSE)
