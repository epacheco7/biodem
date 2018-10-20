n <- 10^5 # 10 ** 5 populación
modelo <- list(
  mu = 5,
  alpha = 1,
  delta = -alpha,
  sigma = 0.5,
  alelo = "A"
)

feno1 <- rnorm(n = n, mean = modelo$mu, sd = modelo$sigma)
feno2 <- rnorm(n, modelo$mu + 2 * modelo$alpha, modelo$sigma)
a <- rep("a", n)
A <- rep("A", n)

IB1 <- list(madre = a, padre = a, feno = feno1)
IB2 <- list(madre = A, padre = A, feno = feno2)

source("dia04/meiosis.R")

cruze <- function(ma, pa, modelo) {
  mad <- meiosis(ma$madre, ma$padre)
  pad <- meiosis(pa$madre, pa$padre)
  x <- (mad == modelo$alelo) + (pad == modelo$alelo)
  m <- modelo$mu + x * modelo$alpha + (x == 1) * modelo$delta
  y <- m + modelo$sigma * rnorm((length(x)))
  return(list(
    madre = mad,
    padre = pad,
    feno = y
  ))
}

F1 <- cruze(IB1, IB2, modelo)
BC1 <- cruze(IB1, F1, modelo)
BC2 <- cruze(IB2, F1, modelo)
F2 <- cruze(F1, F1, modelo)

plot_cruze <- function(nombre_cruz, cruz, col = "blue") {
  plot(density(cruz$fen),
       main = paste(nombre_cruz, ": promedio = ", round(mean(cruz$fen), 2),
                    ", sd = ",round(sd(cruz$fen), 2), sep = ""
                    ),
       col = col
       )
}
plot_cruze("IB1", IB1)

op <- par(mfrow = c(2, 3))
plot_cruze("IB1", IB1)
plot_cruze("IB2", IB2)
plot_cruze("F1", F1, col = "orange")
plot_cruze("BC1", BC1, col = "red")
plot_cruze("BC2", BC2, col = "red")
plot_cruze("F2", F2, col = "darkgreen")
par(op)





