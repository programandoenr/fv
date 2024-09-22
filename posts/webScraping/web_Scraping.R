


# Librerías 
library("dplyr")
library("rvest")

# URL
webpage <- read_html("https://es.wikipedia.org/wiki/Anexo:Municipios_de_Espa%C3%B1a_por_poblaci%C3%B3n")

# Se obtiene los datos de la URL:
t <- webpage %>%
  html_nodes(".mw-parser-output") %>%
  html_table()  
t <- t[[1]] 

# Se seleccionan los elementos deseados:
t <- t[(8:31),] 

# Se seleccionan variables y se cambian los nombres:
t1 <- select(t, 2:5)
variables <- c("Nombre", "Población", "Provincia", "Comunidad Autónoma")
names(t1) = c(variables)
