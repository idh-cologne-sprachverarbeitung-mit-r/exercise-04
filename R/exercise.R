# this is ensure that the random numbers are always the same
set.seed(1)

# generate a vector of 1000 random numbers
vec <- runif(1000)
a <- matrix(vec,nrow = 250,ncol = 4)
b <- aperm(a, c(2,1))
c <- colSums(a)
typeof(c)
d <- b[,210]
d <- sum(d)

e <- list(a="Hello World!", b=TRUE, c=3.5)
f <- list(f1=1,f2=2,f3=3)
g <- f[[2]]
f[4] <- list(f4=a)
h <- f

name <- c('Lukas','Anna')
age <- c(22, 18)
address <- c('ABC 1', 'DEF 2')
knowsR <- c(TRUE, FALSE)

i <- data.frame(name, age, address, knowsR)
j <- mean(i$age)
k <- subset(i, knowsR == TRUE)
words <- c("the", "dog", "barks", ".")
pos <- c("det", "nn", "vbz", "punct")
lemma <- c("the", "dog", "bark", ".")
length <- nchar(words)
m <- data.frame(words, pos, lemma, length)
