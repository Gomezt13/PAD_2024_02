# Instalación del paquete agricolae (si no lo tienes instalado)
install.packages("agricolae")

# Cargar el paquete agricolae
library(agricolae)


# DCA ---------------------------------------------------------------------



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


# DBCA --------------------------------------------------------------------

library(agricolae)
library(tidyverse)

# fertilizante: 0, 50, 100
# cultivar: canchan y peruanita
trt<-c(3, 2) # factorial 3x2


outdesign <-design.ab(trt, r=4, design = "rcbd")
book<-outdesign$book

book %>% str()

ds <- book %>% 
  mutate(ferti = case_when(
    A %in% 1 ~ "0"
    ,  A %in% 2 ~ "50"
    ,  A %in% 3 ~ "100"
  )) %>% 
  mutate(cultivar = case_when(
    B %in% 1 ~ "canchan"
    ,  B %in% 2 ~ "peruanita"
  )) 


ds %>% 
  openxlsx::write.xlsx(file = "dbca.xlsx")
