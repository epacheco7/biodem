meiosis <- function(GM, GP) {
  de_GM <- rbinom(length(GM), 1, 0.5)
  GH <- GP
  crossover <- de_GM == 1
  GH[crossover] <- GM[crossover]
  return(GH)
}