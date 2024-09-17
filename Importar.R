#importar data


# importar csv ------------------------------------------------------------

csvdt <- read.csv(file = "DATOS_2024_02/LA MOLINA 2014 POTATO WUE (FB) - fb.csv")


# importar tsv ------------------------------------------------------------

tsv <- read.delim(file = "DATOS_2024_02/LA MOLINA 2014 POTATO WUE (FB) - fb.tsv", sep = "\t", header = TRUE)


# importar xlsx -----------------------------------------------------------

install.packages("openxlsx")

library(openxlsx)

xlsxdt <- read.xlsx(xlsxFile = "DATOS_2024_02/LA MOLINA 2014 POTATO WUE (FB).xlsx", sheet = "fb")
