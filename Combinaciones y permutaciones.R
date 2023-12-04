# Combinaciones y permutaciones

# Instalación de paquetería.

# 1.- Instalar paquetería **gtools*

install.packages("gtools")

# 2.- Abribir paquetería.

library(gtools)

#COMBINACIONES

# 1. Ejemplo: Tenemos 100 estudiantes y se requieren
#agrupar en equipos de 2 integrantes cada uno.

# N = 100 - Número de elementos

# n = 2 - Grupos de 2 en 2 

N <- 100
n <- 2

# 2 Determinar que vayan los números con ID números
# Consecutivo. En esta ocasión, el objeto se llamará "alumno"

alumnos <- c(1:N)

## Cómo sacar las combinaciones

# 1. Nombre un objeto llamado "combinaciones", utilizando 
# **N**, **n** y **alumnos** y la función
# **combinación**

combinaciones <- combinations(N, n, alumnos)

# 2. Las primeras combinaciones.

head(combinaciones)

# 3. Las últimas combinaciones.

tail(combinaciones)

# 4. ¿Cuántas combinaciones tenemos en total?

nrow(combinaciones)

# 5. Utilizando la formula
# **factorial (N) / (factorial(n) * (factorial(N-n)))**
# debe salir el mismo número que en el código anterior

factorial (N) / (factorial(n) * (factorial(N-n)))

# Mi ejercicio.

# 1. Se quieren realizar equipos de 5 integrantes con
# Los alumnos de quinto y sexto grado de la escuela 
# primaria "Lázaro Cárdenas de Banderilla". En total se 
# tienen 135 alumnos.

# N = 135 - Número de elementos

# n = 3 - Grupos de 2 en 2 

N <- 90
n <- 3

# 2 Determinar que vayan los números con ID números
# Consecutivo. En esta ocasión, el objeto se llamará "alumno"

alumnos <- c(1:N)

## Cómo sacar las combinaciones

# 1. Nombre un objeto llamado "combinaciones", utilizando 
# **N**, **n** y **alumnos** y la función
# **combinación**

combinaciones <- combinations(N, n, alumnos)

# 2. Las primeras combinaciones.

head(combinaciones)

# 3. Las últimas combinaciones.

tail(combinaciones)

# 4. ¿Cuántas combinaciones tenemos en total?

nrow(combinaciones)

# 5. Utilizando la formula
# **factorial (N) / (factorial(n) * (factorial(N-n)))**
# debe salir el mismo número que en el código anterior

factorial (N) / (factorial(n) * (factorial(N-n)))

# PERMUTACIONES

# 1. Ejemplo: Tenemos 100 estudiantes y se requieren
#agrupar en equipos de 2 integrantes cada uno.

# N = 100 - Número de elementos

# n = 2 - Grupos de 2 en 2 

N <- 100
n <- 2

# 2 Determinar que vayan los números con ID números
# Consecutivo. En esta ocasión, el objeto se llamará "alumno"

alumnos <- c(1:N)

## Sacar las permutaciones

# 1.- Nombrar un objeto llamado "permutaciones", utilizando
# **N**, **n** y **alumnos** y la función **permutations**

permutaciones <- permutations(N, n, alumnos)

# 2. Las primeras permutaciones

head(permutaciones)

# 3. Las últimas permutaciones

tail(permutaciones)

# 4. ¿Cuántas permutaciones de tienen en total?

nrow(permutaciones)

# 5. Utilizando la formula
# **factorial(N) / factorial(N-N)**, debe salir el 
#mismo número que en el código anterior

factorial(N) / factorial(N-N)

# Mi ejercicio.

# 1. Ejemplo: Tenemos 100 estudiantes y se requieren
#agrupar en equipos de 2 integrantes cada uno.

# N = 90 - Número de elementos

# n = 3 - Grupos de 2 en 2 

N <- 90
n <- 3

# 2 Determinar que vayan los números con ID números
# Consecutivo. En esta ocasión, el objeto se llamará "alumno"

alumnos <- c(1:N)

## Sacar las permutaciones

# 1.- Nombrar un objeto llamado "permutaciones", utilizando
# **N**, **n** y **alumnos** y la función **permutations**

permutaciones2 <- permutations(N, n, alumnos)

# 2. Las primeras permutaciones

head(permutaciones2)

# 3. Las últimas permutaciones

tail(permutaciones2)

# 4. ¿Cuántas permutaciones de tienen en total?

nrow(permutaciones2)

# 5. Utilizando la formula
# **factorial(N) / factorial(N-N)**, debe salir el 
#mismo número que en el código anterior

factorial(N) / factorial(N-N)
