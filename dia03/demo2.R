# ejemplo de secuencias tipo ADN aleatorias

adn <- c("a", "c", "g", "t")
n_s <- 100000
seq <- sample(x = adn, size = n_s, replace = TRUE, prob = c(0.3, 0.2, 0.2, 0.3))

# ejemplo de parametros de plot
x <- 1:10
y <- x * x
plot(x, y) # básico
plot(x, y, type = "s") # cambiar tipo presentación
plot(x, y, type = "b", col = "blue", pch = 18)
abline(v = 5, col = "red")

# ejemplo de histograma
z <- sample(x = 1:10, size = 10000, replace = TRUE)
hist(z, col = "darkgreen")
abline(h = 300, col = "red")
