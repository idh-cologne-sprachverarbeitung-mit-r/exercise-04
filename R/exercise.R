# this is ensure that the random numbers are always the same
set.seed(1)

# generate a vector of 1000 random numbers
vec <- runif(1000)

a <- array(vec, c(250, 4))
b <- t(a)
c <- colSums(a)
d <- colSums(b)[210]

e <- list("Hello World!", TRUE, 3.5)
f <- list(f1=1, f2=2, f3=3)
g <- f['f2']

h <- c(f) # Clone f, as tests depend on `f` not getting modified
h$f4 <- a


i <- data.frame(name=c("Foo", "Bar"), age=c(23, 42), knowsR=c(F, T))
j <- mean(i$age)
k <- subset(i, knowsR == T)

words <- c("the", "dog", "barks", ".")
pos <- c("det", "nn", "vbz", "punct")
lemma <- c("the", "dog", "bark", ".")

m <- data.frame(words=words, pos=pos, lemma=lemma, lenght=nchar(words))