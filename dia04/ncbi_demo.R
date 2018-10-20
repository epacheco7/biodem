install.packages("rentrez")
install.packages("magrittr")
install.packages("seqinr")

library(rentrez)
library(magrittr)
library(seqinr)

# mostrar bases de datos
entrez_dbs()

# como puedo buscar una base de datos
entrez_db_searchable(db = "nucleotide")

r_search <- entrez_search(db = "nucleotide", 
                          term = "Solanum[ORGN] & CYTB[GEN]")
r_search

r_search$id

entrez_fetch("nucleotide", r_search$ids[1], rettype = "gb") %>% 
  write(file = "dia04/cytb_1.gb", append = FALSE)

entrez_fetch("nucleotide", r_search$ids, rettype = "fasta") %>% 
  write(file = "dia04/cytb.fa")

fa <- seqinr::read.fasta("dia04/cytb.fa")

fl <- lapply(fa, length) %>% as.integer()
fn <- names(fa)

dotchart(x = fl, labels = fn)
