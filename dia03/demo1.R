# Variables:

# texto
s <- "Ola"

# números
## integer
i <- 1

## decimales
d <- 1.23

## lógicos
l <- TRUE 

# Construcciones dimensionadas con variables
## scalar: un solo valor en la variable
i <- 1

## vector: varios valores en una dimension, un set
ii <- 1:10
ll <- rep(TRUE, 5)
dd <- seq(1, 2, 0.1)
tt <- letters
tt <- LETTERS[3:10]

## matriz: varios valores del mismo tipo en dos 
## dimensiones
mm <- matrix(data = NA, nrow = 4, ncol = 5)
m1 <- 1:20
m2 <- matrix(data = m1, nrow = 4, ncol = 5)
m3 <- matrix(data = m1, nrow = 4, ncol = 5, byrow = TRUE)
m4 <- letters[1:25]
m5 <- matrix(data = m4, nrow = 5, ncol = 5, byrow = TRUE)

x <- 1:10
y <- x * x
z <- cbind(x, y)
plot(x = z[, 1], y = z[, 2])

# Operadores
## aritméticos
2 + 3
4 - 1
5 * 5
12 / 4

2 ** 3

# Funciones
getwd() # ver el directorio de trabajo o activo
getwd()
rep() # repetir un valor n veces
rep(x = "q", times = 11)
seq() # cambiar un valor numerico en manera de pasos
seq(from = 1, to = 2, by = .1)
matrix() # construir una matriz
matrix(data = "", nrow = 3, ncol = 7)
cbind() # combinar vectores de tamaño igual
plot() # graficar valores
str() # mi lupa para mirar adentro de un objeto en R
dim() # para saber los dimensiones
head() # las primeras n (por pre-definido = 6) lineas, filas
tail() # para ver las últimas
file.choose() # para ubicar un archivo
sample() # para crear valors al azar 
         # (numeros o caracteres en una dimensión)
table() # tabulaciones cruzadas de vectores
# ? # seguido por el comando en cuestión sin parentesis
# ?? # para buscar en toda la documentacióm una palabra
c() # combinar valores escalares para un vector
abline() # agregar una linea a un plot
hist() # histogram
install.packages() # bajar un program del repositorio CRAN
library() # para activar un paquete













