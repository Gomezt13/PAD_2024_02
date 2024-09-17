#importar data


# importar csv ------------------------------------------------------------

csvdt <- read.csv(file = "DATOS_2024_02/LA MOLINA 2014 POTATO WUE (FB) - fb.csv")


# importar tsv ------------------------------------------------------------

tsv <- read.delim(file = "DATOS_2024_02/LA MOLINA 2014 POTATO WUE (FB) - fb.tsv", sep = "\t", header = TRUE)


# importar xlsx -----------------------------------------------------------

install.packages("openxlsx")

library(openxlsx)

xlsxdt <- read.xlsx(xlsxFile = "DATOS_2024_02/LA MOLINA 2014 POTATO WUE (FB).xlsx", sheet = "fb")


# importar de google sheet ------------------------------------------------

library(inti)
library(googlesheets4)

url <- "https://docs.google.com/spreadsheets/d/15r7ZwcZZHbEgltlF6gSFvCTFA-CFzVBWwg3mFlRyKPs/edit?gid=172957346#gid=172957346"
gs <- as_sheets_id(url)

fb <- googlesheets4::range_read(ss = gs, sheet = "fb")
