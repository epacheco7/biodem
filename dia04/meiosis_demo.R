n <- 10

madre <- rep("a", n)
padre <- rep("A", n)

de_madre <- rbinom(n, 1, 0.5)

hijos <- padre
hijos[de_madre == 1] <- madre[de_madre == 1]
hijos

meiosis <- function(GM, GP) {
  de_GM <- rbinom(length(GM), 1, 0.5)
  GH <- GP
  GH[de_GM == 1] <- GM[de_GM == 1]
  return(GH)
}

meiosis(madre, padre)
