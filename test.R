library(testthat)

source("R/exercise.R")

# a)

expect_equal(mode(a), "numeric")
expect_equal(length(dim(a)), 2)
expect_equal(dim(a), c(250,4))
expect_equal(a[10,3], 0.5326012, tolerance=1e-5)

# b) 
expect_equal(mode(b), "numeric")
expect_equal(length(dim(b)), 2)
expect_equal(dim(b), c(4,250))
expect_equal(b[3,10], 0.5326012, tolerance=1e-5)

# c)
expect_length(c,4)
expect_equal(colSums(a), c)

# d)
expect_length(d, 1)
expect_equal(1.50493, d, tolerance=1e-5)

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
#expect_equal(names(h), c("f1", "f2", "f3", ""))

# i)
expect_s3_class(i, "data.frame")
expect_equal(ncol(i), 4)
expect_named(i)
expect_equal(names(i), c("name", "age", "address", "knowsR"))
expect_gte(sum(i$knowsR), 1)
expect_gte(sum(! i$knowsR), 1)

# j) 
expect_equal(j, mean(i$age))

# k)
expect_s3_class(k, "data.frame")
expect_equal(ncol(k), 4)
expect_named(k)
expect_equal(names(k), c("name", "age", "address", "knowsR"))
expect_equal(sum(k$knowsR), nrow(k))


# m)
expect_s3_class(m, "data.frame")
expect_equal(ncol(m), 4)
expect_named(m)
expect_equal(names(m), c("words", "pos", "lemma", "length"))
expect_equal(m$length, nchar(words))
