#1

y <- c(6,-5,1)
if(y[2]^2>4*y[1]*y[3])
{
  result <- c((-y[2]-sqrt(y[2]^2-4*y[1]*y[3]))/(2*y[3]),(-y[2]+sqrt(y[2]^2-4*y[1]*y[3]))/(2*y[3]))
} else if (y[2]^2==4*y[1]*y[3]){
    result <- c(-y[2]/(2*y[3]))
  }else{
    result <- c()
  }


#2
v <- c(1,1,2,4,5)
raicesPolinomicas <- function(v){
  w <- polyroot(v)
  w <- w[round(Im(w))==0]
  w <- Re(w)
  return(w)
}
z <- raicesPolinomicas(v)
f <- polyroot(v)
#3.a
letraAzar <- function(v){
  w <- sample(letters,1)
  return (w)
}
a <- c("")
a <- letraAzar()

#3.b
v <- c("")
agregaLetras <- function(v) {
  nueva <- c(" ")
  while(nueva!=c("a")){
    nueva <- sample(letters,1)
    v <- paste(v, nueva, sep="")
  }
  return(v)
}
w <- agregaLetras(v)

#3.c
promedioLetras <- function(n){
  if (n!=0){
    
    acumulador <- 0
    for(i in 1:n[1]){
      v <- c("")
      w <- c("")
      w <- agregaLetras(v)
      acumulador=acumulador+nchar(w)
    }
    return (acumulador/n)
    }else return (0)
}
promedio <- promedioLetras(10)

#4
acumulador <- 0
cantidad <- 0
while (acumulador<500){

  acumulador <- acumulador + runif(1)
  cantidad <- cantidad +1
}
acumulador
cantidad

#5 Hay que mejorar la creación del vector en forma aleatoria.
cuadrado <- function(n){
  w <- n[n>0]^2
  return(w)
}

n <- c(5,-2,3,-4,5,5,-8,9)
cuad <- cuadrado(n)

#7
a <- 1.7
n <- 10
diagonal <- function(a,n){
  matriz <- matrix(0,nrow = n,ncol = n)
  for (i in 1:as.numeric(n)){
    matriz[i,i] <- a
  }
  return(matriz)
}
mat <- diagonal(a,n)

#8
v <- c(2,2,4,2,5,6,2,7,8,2)
armarDiagonal <- function(v){
  matriz <- matrix(0,nrow = length(v),ncol = length(v))
  for (i in 1:length(v)){
    matriz[i,i] <- v[i]
  }
  return(matriz)
}
mat <- armarDiagonal(v)

#9
#9.a
datos <- read.csv("astronauts.csv")
datos$Status <- factor(datos$Status, c("Active", "Retired", "Deceased", "Management"), c("Active", "Retired", "Deceased", "Management"))
datos$Gender <- factor(datos$Gender, c("Male", "Female"), c("Male", "Female"))
#9.b
table(datos$Space.Flights)
#9.c
datos$Name[datos$Space.Flights==max(datos$Space.Flights)]
datos$Name[datos$Space.Flights==min(datos$Space.Flights)]
#9.d
x <- datos$Space.Flights
y <- datos$Space.Walks
plot(jitter(x),jitter(y))
points(y,col="red", type = "l")

library(ggplot2)
ggplot(datos,aes(x,y))+geom_count()
plot(datos$Space.Flights,datos$Space.Flight..hr., type="p", pch = 20)
plot(datos$Space.Walks, datos$Space.Walks..hr.,type="p", pch = 20)

#9.f
library("dplyr")
datosNum <- select_if(datos, is.numeric)
datosNum <- datosNum[,-1]
promedio <- colMeans(datosNum)
suma <- colSums(datosNum)
maximo <- apply(datosNum,2,max)
minimo <- apply(datosNum,2,min)


df <- data.frame("Promedio"=colMeans(datosNum),
                 "Suma"=colSums(datosNum),
                  "Maximo"=maximo,
                  "Minimo"=minimo)


