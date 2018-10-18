# Operadores
## Lógicos;  resultan en un valor TRUE o FALSE
## Nota importante: TRUE es interpretado como 1 en operaciones aritmeticas
##                  FALSE es interpretado como 0 en operaciones aritmeticas

# Condiciones

## igualdad
4 == 4 # devuelve TRUE
4 == 3 # devuelve FALSE

"a" == "a" # devuelve TRUE
"a" == "b" # devuelve FALSE

## no-igualdad

4 != 3 # devuelve TRUE
4 != 4 # devuelve TRUE

## mayor que

4 > 3

## menor que

2 < 3

## mayor o igual que

4 >= 4

## menor o igual que

2 <= 10

# Vectoricados!
## funcionan con vectores!

v <- sample(x = 1:10, size = 20, replace = TRUE)
v > 5

## Selección de cuales

v[v > 5]

which(v > 5)

# Combinar condiciones
## 'y' (inglés: AND): &

cond1 <- v > 5
cond2 <- v < 8

cond1 & cond2
cond1_2 <- cond1 & cond2

v[cond1_2]
v[cond1 & cond2]







