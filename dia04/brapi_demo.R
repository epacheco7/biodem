install.packages("devtools")
devtools::install_github("CIP_RIU/brapi")

library(brapi)

spb <- ba_db()$sweetpotatobase

spb %>% ba_programs()

studies <- spb %>% ba_studies_search(programDbId = "135")

study <- spb %>% ba_studies_table(studyDbId = "134")

table(study$`Predominant Skin color estimating 1-9|CO_331:0000175`)
