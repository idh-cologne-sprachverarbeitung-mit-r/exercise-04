# this is ensure that the random numbers are always the same
set.seed(1)

# generate a vector of 1000 random numbers
vec <- runif(1000)

a <- matrix(vec, 250, 4)

b <- t(a)

c <- colSums(a)

d <- (colSums(b))[210]

vec1 <- "Hello World!"
vec2 <- TRUE
vec3 <- c(3.5)

e <- list(vec1, vec2, vec3)

f <- list (1, 2, 3)

names(f) <- c("f1", "f2", "f3")

g <- f$f2

h <- f

h[4] <- list(a)

name <- c("Paul", "Thomas")
age <- c(60, 17)
address <- c("Rudolfstr. 27", "Friesenplatz 1")
knowsR <- c(FALSE, TRUE)

i <- data.frame(name, age, address, knowsR)
attach(i)

mean(age) -> j

k <- i[2,]

words <- c("the", "dog", "barks", ".")
pos <- c("det", "nn", "vbz", "punct")
lemma <- c("the", "dog", "bark", ".")
length <- nchar(words)

m <- data.frame (words, pos, lemma, length)

