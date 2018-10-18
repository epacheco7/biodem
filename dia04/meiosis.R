meiosis <- function(GM, GP) {
  de_GM <- rbinom(length(GM), 1, 0.5)
  GH <- GP
  GH[de_GM == 1] <- GM[de_GM == 1]
  return(GH)
}
