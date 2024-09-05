# Definir una matriz de 3x3

matriz=matrix(NA,nrow = 3,ncol = 3)
num=seq(from=1, to=9,by=1)
k=1
for (i in 1:3) {
  for (j in 1:3) {
    matriz[i,j]=num[k]
    k=k+1
  }
}
matriz

# Definir una matriz de 3x3

matriz <- function(m,n) {
matriz=matrix(NA,nrow = m,ncol = n)
num=seq(from=3, to=m*n+2,by=1)
k=1
for (i in 1:m) {
  for (j in 1:n) {
    matriz[i,j]=num[k]
    k=k+1
  }
}
return(matriz)
}
matriz(4,3)
