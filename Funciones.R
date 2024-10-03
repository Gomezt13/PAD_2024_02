saludo <- function(x, y) {
  paste(x, y)
}

saludo(x="hola", y="FICA")
saludo("hola","UNTRM")

#Area de una circunferencia

area <- function(r){
  if(is.numeric(r)){
    pi*r*r
  } else {
    paste(r, "no es numerico")
  }
}

area(10)

#Area de una circunferencia

proyectar_unidad <- function(r){
  if(is.numeric(r)){
    pi*r*r
  } else {
    paste(r, "no es numerico")
  }
}

area(10)     

#Calculo de IMC

IMC <- function(p,a){
  rs <- (p/a^2)
  if(rs < 18.5) {print("bajo peso")}
  if(rs >= 18.5 & rs <=24.9) {print("peso normal")}
  if(rs > 25 & rs <=29.9) {print("sobre peso")}
  if(rs > 30) {print("obesidad")}
}

IMC(69,1.70)
install.packages("rmarkdown")
