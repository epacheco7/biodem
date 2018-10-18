# Como leer datos de Excel

library(readxl)

datos <- read_xlsx(path = "data/Data_original.xlsx",
                   sheet = 1,
                   skip = 1)

sml <- as.integer(datos$Semillas)
hist(x = sml)
