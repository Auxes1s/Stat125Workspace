#PART 1 ----
#1.1
stock.prices <- c(23,27,23,21,34)
#1.2
names(stock.prices) <- c('Mon', 'Tue', 'Wed', 'Thur', 'Fri')
#1.3
over.23 <- c(F,T,F,F,T)
#1.4
stock.prices[over.23]

#PART 2 ----
#2.1
smoking.status <- c(1, 0, 0, 1, 1, 1, 0, 1, 1, 0)
respo <- c('Yuri', 'Eugene', 'Lisa', 'Cris', 'Cal', 'Jessa', 'Bert', 'Ron', 'Beth', 'Ann')
sex <- c('M', 'M', 'F', 'M', 'M', 'F', 'M', 'M', 'F', 'F')

#2.2
yes.no <- factor(smoking.status,
                 levels = c(1, 0),
                 labels = c("Yes", "No"))

#2.3
sex[sex == 'M'] <- "Male"
sex[sex == 'F'] <- "Female"
sex.factor <- factor(sex,
                     levels = c("Female", "Male"))

#2.4
female.smoker <- respo[sex.factor == 'Female' & yes.no == 'Yes']
#PART 3 ----
#3.1
X <- c(29, 21, 31); Y <- c(13, 6, 41)
Z <- rbind(X, Y)
#3.2
item2.matrix <- matrix(1:25, 5, 5, byrow=TRUE)
#3.3.a
item2.matrix[c(2,3), c(2,3)]
#3.3.b
item2.matrix[c(1,3,5), c(2,5)]
#3.3.c
item2.matrix[c(1,3,4), 3]
#3.4
name <- c("Bubbles", "Bruno", "Sam")
age <- c(22L, 26L, 21L)
weight <- as.double(c(150, 165, 145))
sex <- as.factor(c("Female", "Male", "Female"))
df <- data.frame(name, age, weight, sex)


#PART 4 ----
get_square_root <- function(a, delta) {
  x1 <- sample.int(20, 1)
  xn <- (0.5)*((x1) + (a / x1))
  while(abs(xn - x1) > delta){
    x1 <- xn
    xn <- (0.5)*((x1) + (a / x1))
  }
  return(xn)
}