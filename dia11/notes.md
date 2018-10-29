install.packages("workflowr")

library(workfowr)

wflow_start(name = "ensamblaje")

Editar:
 - about.Rmd
 - licence.Rmd
 - index.Rmd
 - _site.yml

Agregar archivos al directorio analysis mediante menu
Editar site

wflow_publish("analysis/*")