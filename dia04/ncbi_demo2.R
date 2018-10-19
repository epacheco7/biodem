library(rentrez)
library(magrittr)
library(seqinr)

# mostrar bases de datos
entrez_dbs()

# como puedo buscar una base de datos
entrez_db_searchable(db = "pubmed")

r_search <- entrez_search(db = "pubmed", term = "Solanum & 2017[PDATE]")

search_year <- function(year, term) {
  query <- paste(term, " AND (", year, "[PDAT])", sep = "")
  entrez_search(db = "pubmed", term = query, retmax = 0)$count
}

year <- 2000:2018
papers <- sapply(year, search_year, term = "Chenopodium quinoa", USE.NAMES = FALSE)

plot(year, papers, type = "b", main = "Publicaciones anuales sobre la quinoa",
     xlab = "año", ylab = "publicaciones")
year_of_quinoa <- 2013
abline(v = year_of_quinoa, col = "red")
text("Año de la quinoa", x = year_of_quinoa, y = 20, pos = 4)
