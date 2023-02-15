x <- c(1,2,3)
y <- c(6,5,4)
x*2
x*y
x[1]*y[2]
x+x
x <- x+x
y <- x+x
x <- x+1
vec <- 1:10
vec <- 1:10 *2
vec <- 1:10^2
vec <- 1:10 + 1
vec <- 1:(10*2)
vec <- rep(c(1,1,2), times = 2)
vec <- seq(from = 0, to = 10, length.out = 5)
#Ejercicio 1.4
p <- seq(from=0, to=1,by=0.01)
x <- p
y <- 1-p
y <- p*y
plot(x,y, type = "n" )

#1.5
x <- 1:100
x <- x^2
sum(x)

#1.6
x <- seq(from = 10, to = 30, by = 2)
length(x)
str(x)
x[2]

#1.7
mean(rivers)
sd(rivers)
plot(rivers, type = "h")
summary(rivers, 5)
mx(rivers)
max(rivers)
min(rivers)
rivers[rivers>1000]

#1.9
table(state.region)
which.min(state.center$x)
which(state.area<10000)
state.name[which(state.area<10000)]

#1.10 me falta el punto d
str(mtcars)
rownames(mtcars)[which(mtcars$gear>=4)]
mtcars[mtcars$disp > 150 & mtcars$mpg > 20,]
mtcars[mtcars$gear ==4 & mtcars$vs == 1,]
mtcars[which(mtcars$gear ==4)]
aux <- rownames(mtcars)[mtcars$gear == 4 | mtcars$vs == 1]
mean(mtcars$mpg[mtcars$carb==2])
mtcars[1,]

#1.11
mtcars$am <- factor(mtcars$am, levels = c(0, 1), labels = c("auto", "manual"))

table(mtcars$am)
a <- mtcars$mpg>=25
b <- mtcars$am[a]
table(b)

#1.12
str(fosdata::hot_dogs)
x <- fosdata::hot_dogs
fosdata::hot_dogs$type["factor"]
max(x$sodium)
y <- fosdata::hot_dogs[fosdata::hot_dogs$type=="Beef",]
mean(y[,2])

#1.13
#1.13.a
x <-HistData::DrinksWages
#1.13.b
x$trade[x$wage==min(x$wage)]
#1.13.c
surveys <- sum(x$n)
#1.13.d
total <- x$wage*x$n
suma <- sum(total)
promedio <- suma/surveys

#1.14
#1.14.a
install.packages("Lahman")
x <- Lahman::Batting
#1.14.b
head(x)
#1.14.c
max(x$X3B)
#1.14.d #Se puede hacer esto junto?
x$playerID[x$X3B==max(x$X3B)]
x$yearID[x$X3B==max(x$X3B)]



#1.14.e
y <- x[x$yearID>=1960, ]
max(x[x$yearID>=1960, ]$X3B)

