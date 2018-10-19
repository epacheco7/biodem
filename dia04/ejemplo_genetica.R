# Siegmund, Yakir: Statistics of Gene Mapping, p28-
#
# y <- m + G + E
#
# y <- mu + alpha * (xm + xf) + delta * (x == 1) + eps

# h2 <- var(G) / var(y)

n <- 10 # genotipos
p <- 0.5 # probabilidad
x <- rbinom(n, 2, p)

mu <- 5
alpha <- 1
delta <- -alpha # recesivo!

G <- alpha * x + delta * (x == alpha)

sig <- 0.5
E <- sig * rnorm(n)
y <- mu + G + E
y

h2 <- var(G) / var(y) 

plot(density(y), 
     main = paste("Un modelo recesivo: \n h^2 = ", round(h2, 3)
                  , sep = ""),
     col = "blue"
  )


