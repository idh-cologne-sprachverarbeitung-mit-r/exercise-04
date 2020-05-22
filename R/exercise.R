# this is ensure that the random numbers are always the same
set.seed(1)

# generate a vector of 1000 random numbers
vec <- runif(1000)

words <- c("the", "dog", "barks", ".")
pos <- c("det", "nn", "vbz", "punct")
lemma <- c("the", "dog", "bark", ".")

# a)
a <- matrix(vec, nrow=250, ncol=4)

# b) 
b <- t(a)

# c)
c <- colSums(a)
mode(c)
# Mode of c is numeric.

# d)
d <- colSums(b)[210]

# e)
e <- list("Hello World!", TRUE, 3.5)

# f)
f <- list(f1=1, f2=2, f3=3)

# g)
g <- f[[2]]

# h)
h <- f
h[4] <- list(a)

# i)
i <- data.frame("name"=c("Anna","Luis"), "gge"=c(2, 20), "address"=c("Mohnstr. 7","Kölner Str. 1"), "knowsR"=c(FALSE,TRUE))

# j)
j <- colMeans(i[2])

# k)
k <- i[2,]

# m)
length <- nchar(words)
m <- data.frame(words, pos, lemma, length)
