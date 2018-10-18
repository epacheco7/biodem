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












