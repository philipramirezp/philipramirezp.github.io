# Comprimir imágenes en formato WebP ----

# cargar librerias
# install.packages("magick")
library(magick)


## Convertir imágenes a WebP ----
# Lista de imágenes PNG a convertir
imagenes <- c("Latex_logo.png", "profile1.png", "WhatsApp_icon.png", 
              "Python-logo.png", "PALogo.png", "X_icon_2.svg.png")

# Ruta de entrada y salida
ruta <- "images/"

# Convertir cada imagen a WebP
for (img in imagenes) {
  imagen <- image_read(paste0(ruta, img))  # Cargar imagen
  nombre_salida <- paste0(ruta, tools::file_path_sans_ext(img), ".webp")
  image_write(imagen, path = nombre_salida, format = "webp", quality = 80)
}
