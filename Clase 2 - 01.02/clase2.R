#1.a
acum <- 0
for (x in 1:1000)
{
  acum=acum+x
}

#1.b
acum <- 0
n <- 0
for (x in 1:1000)
{
  acum=acum+x
  if (acum>10000 && n==0) n=acum
}
#version 2
i <- 1
x <- 1:1000
acum <- 0
while(acum<10000)
{
  acum=acum+x[i]
  i=i+1
}

#1.c
v <-sample(c(-1,1), 10, replace = TRUE)
coordenadasPositivas <- function(v)
{
  acum <- 0
  for(x in v)
  {
    if (x>0) acum=acum+x
  }
  return (acum)
}
n <- coordenadasPositivas(v)

#2
x <- seq(from=0, to=50, length.out=100)  
y <- sin(x)
z <- cos(x)
w <- cos(x^2)
plot(x,y, type = "l", main="Coseno, Seno y Coseno cuadrado", xlab="X", ylab="Seno", col=
       "blue", pch=20, )
lines(x,z, xlab="Coseno", col="red")
lines(x,w, xlab="CosenoCuadrado", col="grey")
legend("bottomright", legend = c("seno", "Coseno", "CosenoCuadrado"),
       lwd = 3, col = c("blue","red", "green"))


#3
datos <- read.table("autos.txt",header = TRUE)
#3.a
datos[3,]
#3.b
datos[,2]
#3.c
datos[datos$precio==min(datos$precio),2]
#3.d
sum(datos[1:4,1])
#3.e
str(apply)
?apply
apply(datos,2,FUN=sum)

apply(datos[1],2,FUN=sum)

#3.f
x <- datos[,1]
y <- datos[,2]
plot(x,y,pch=20, main="Autos", ylab = "Calidad", xlab = "Precio", col="gray52")

#3.g
algo <- sort(datos$precio, index.return=TRUE, decreasing = TRUE)
datos[algo$ix,]
order(datos$precio)
datos[order(datos$precio),]
#rownames(datos) 
#names(datos) = colnames

#4
#1.10 me falta el punto d
str(mtcars)
rownames(mtcars)[which(mtcars$gear>=4)]
mtcars[mtcars$disp > 150 & mtcars$mpg > 20,]
mtcars[mtcars$gear ==4 & mtcars$vs == 1,]
mtcars[which(mtcars$gear ==4)]
aux <- rownames(mtcars)[mtcars$gear == 4 | mtcars$vs == 1]
mean(mtcars$mpg[mtcars$carb==2])
mtcars[1,]

#4.a
rownames(mtcars)[which(mtcars$gear>=4)]

#4.b
rownames(mtcars)[which(mtcars$gear==4 & mtcars$vs==1)]

#4.c
rownames(mtcars)[which(mtcars$gear==4 | mtcars$vs==1)]

#4.d
mtcars$am <- factor(mtcars$am, c(0,1), c("auto", "manual"))
