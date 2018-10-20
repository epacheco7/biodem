n <- 10

madre <- rep("a", n)
padre <- rep("A", n)

set.seed(123)
de_madre <- rbinom(n, 1, 0.5)
hijos <- padre
crossover <- de_madre == 1
hijos[crossover] <- madre[crossover]
hijos

meiosis <- function(GM, GP) {
  de_GM <- rbinom(length(GM), 1, 0.5)
  GH <- GP
  crossover <- de_GM == 1
  GH[crossover] <- GM[crossover]
  return(GH)
}

meiosis(madre, padre)
