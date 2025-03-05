#############################################################################
library(base64enc)

# Lista de logos
logos <- c("https://philipramirezp.github.io/images/Rlogo.png",
           "https://philipramirezp.github.io/images/sql_logo.png",
           "https://philipramirezp.github.io/images/stata-logo.png",
           "https://philipramirezp.github.io/images/Microsoft-Excel-Logo.png")

# Aplicar la transformación a cada logo
logos_finales <- sapply(logos, function(link) {
  encoded_url <- URLencode(link, reserved = TRUE)
  paste0("http://localhost:8888/unsafe/100x100/", encoded_url)
})

# Mostrar resultados
print(logos_finales)

###########################################################################
# perfil
perfil <- "https://philipramirezp.github.io/images/profile1.png"
encoded_url <- URLencode(perfil, reserved = TRUE)
perfil_final <- paste0("http://localhost:8888/unsafe/240x250/", encoded_url)

# location logo
location <- "https://philipramirezp.github.io/images/location.png"
encoded_url_2 <- URLencode(location, reserved = TRUE)
location_final <- paste0("http://localhost:8888/unsafe/30x30/", encoded_url_2)

logos_union <- c(logos_finales,
                 perfil_final,
                 location_final)
length(logos_union)
