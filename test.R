library(testthat)

source("R/exercise.R")

# a)

expect_equal(mode(a), "numeric")
expect_equal(length(dim(a)), 2)
expect_equal(dim(a), c(250,4))
expect_equal(a[10,3], 0.5326012)

# b) 
expect_equal(mode(b), "numeric")
expect_equal(length(dim(b)), 2)
expect_equal(dim(b), c(4,250))
expect_equal(a[3,10], 0.5326012)

# c)
expect_length(c,4)
expect_equal(colSums(a), c)

# d)
expect_length(d, 1)
expect_equal(1.50493, d)

# e)
expect_equal(mode(e),"list")
expect_length(e,3)
expect_equal(e[[1]], "Hello World!")
expect_equal(e[[2]], TRUE)
expect_equal(e[[3]], 3.5)

# f)
expect_equal(mode(f), "list")
expect_length(f, 3)
expect_named(f)
expect_equal(names(f), c("f1", "f2", "f3"))

# g)
expect_equal(g, 2)

# h)
expect_length(h, 4)
expect_equal(h[[4]], a)
expect_equal(names(h), c("f1", "f2", "f3", ""))

# i)