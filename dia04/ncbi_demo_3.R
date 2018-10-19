library(rentrez)
library(magrittr)
library(seqinr)

mi_termino <- "Solanum & CYTB[GEN]"

r_search <- entrez_search(db = "nucleotide", term = mi_termino)

entrez_fetch("nucleotide", r_search$ids, rettype = "fasta") %>% 
  write(file = "dia04/cytb.fa")

