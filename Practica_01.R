install.packages("agricolae")

library(tidyverse)

name <- "Euler"

saludo <- "Hola"

paste(saludo,name)

# peogramción antigua

notas <- c(15,36,25,85,95,74)

notas_suma <- notas+1

notas_prom <- mean(notas_suma)

# programación funcional

notas_promedio <- c(15,36,25,85,95,74) %>% 
  + 1 %>% 
  mean()


nota <- c(15,36,25,85,95,74) |>  mean()

