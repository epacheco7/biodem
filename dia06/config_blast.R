# instalar blast para windows

# crear folder D:/data/blast

download.file(url = "ftp://ftp.ncbi.nlm.nih.gov/blast/db/16SMicrobial.tar.gz",
                            destfile = "D:/data/blast/16S.tar.gz", mode = "wb")
              
untar("D:/data/blast/16S.tar.gz", exdir = "D:/data/blast/16S/")
