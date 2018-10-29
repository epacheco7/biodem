library(rBLAST)
library(Biostrings)

seq <- readDNAStringSet("dia04/cytb.fa")
seq

makeblastdb("dia04/cytb.fa", dbtype = "nucl")


bl <- blast(db = "dia04/cytb.fa", type = "blastn")
bl

cl <- predict(bl, seq[9])
cl
