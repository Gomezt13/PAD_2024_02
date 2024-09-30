# Instalación del paquete agricolae (si no lo tienes instalado)
install.packages("agricolae")

# Cargar el paquete agricolae
library(agricolae)

# Definir los niveles de dosis de fertilización nitrogenada
dosis <- c("0", "50", "100")

# Número de repeticiones
repeticiones <- 5

# Generar el diseño completamente aleatorizado (CRD)
diseño <- design.crd(trt = dosis, r = repeticiones, seed = 123)

# Ver el diseño generado
print(diseño)

# Visualizar el diseño
diseño$book
