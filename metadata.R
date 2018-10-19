# Summary
str()
summary()
table()

# Tamaño
dim()
nrow()
ncol()

# Contenido
head()
tail()

# Names
names()
row.names()

# Factors
levels()
nlevels()


# Ejemplo

exprmt <- factor(
            sample(
              x = c("Ctrl", "Trt1", "Trt2", "Trt3"), 
              size = 20,
              replace = TRUE
            )
          )

library(magrittr)
exprmt %>% table %>% barplot()

# alternativa 1:
barplot(table(exprmt))

# alternativa 2:
tbl <- table(exprmt)
bpt <- barplot(tbl) 

# documentación addicional
comment()
attr()

# Grabar como objeto de R

saveRDS(exprmt, file = "exprmt.rds")

# declarar unidades de medición

library(units)

y1 <- 10:20
y1 <- set_units(y1, t/ha)

y2 <- 10:20
y2 <- set_units(y2, kg/m2)

y1 + y2

y3 <- 10:20
y3 <- set_units(y1, km/h)

y2 + y3 # Error!





