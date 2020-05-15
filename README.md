# Exercise 4

**In General**: Please ask questions in the [ilias-Forum](https://www.ilias.uni-koeln.de/ilias/goto_uk_frm_3270419.html) for this course, so that others can also see the question and answer*.

*Please submit your solutions to this exercise until May 22nd.*

The goal of this exercise is to become familiar with matrices, lists and data.frames.

## Step 1
Read the tutorial!

Chapter [5, "arrays and matrices"](https://cran.r-project.org/doc/manuals/r-release/R-intro.html#Arrays-and-matrices) contains general information on dimensions and indices. Most of this is not used regularly, except for the `matrix()` function. In this class, we will mostly use vectors (instead of arrays). Therefore, you can go over this quickly.

Chapter [6](https://cran.r-project.org/doc/manuals/r-release/R-intro.html#Lists-and-data-frames) introduces lists and data frames. These are two important data structures, that's why it is worth going over them in more detail.


## Step 2

Clone this repository. The same as last week.

In the examples, I'll use "Textanalyse-mit-R", you should replace this with the path to your directory: `cd Textanalyse-mit-R`

Clone this repository: `git clone https://github.com/idh-cologne-sprachverarbeitung-mit-r/exercise-04.git`

Enter the directory `cd exercise-04`

Create a new branch for you: `git checkout -b USERNAME`.

## Step 3
Again (as last week), open the file `R/exercise.R` in your favorite text editor. Depending on your operating system and settings, double clicking may open an editor that came with the R installation. The file contains a vector with random numbers. We'll use them in the exercises.

### Matrices

- a) Define a variable `a` that contains a matrix with four columns and 250 rows. The values of the matrix should be those of the vector `vec` that is defined in your file.
- b) Transpose the matrix and assign the result to `b`
- c) The functions `colSums`, `colMeans` and `rowSums`, `rowMeans` are not mentioned in the tutorial, but we can learn about them now. They calculate the sum or mean per row or column. Assign the column sums of `a` to `c` (you should also check what type `c` has).
- d) Assign the sum of the 210th column of `b` to `d`.

### Lists

- e) Assign a list to variable `e`. The list should contain three elements: `"Hello World!"`, `TRUE`, and `3.5`. Please note that they have different types, which is no problem for lists (but for vectors).
- f) Create a named list and assign it to the variable `f`. The list should contain three elements called `f1` to `f3`. The values should be 1 to 3.
- g) Assign the `f2`-value of `f` to `g`
- h) Extend the list `f` with a new element called `f4` and assign the result to the variable `h`. The value of the element is the matrix defined in `a`.

### Data frames

- i) Create a data frame to store information about persons and assign it to `i`. The data frame should contain columns for `name` (char.), `age` (numeric), `address` (char.), and `knowsR` (logical). Add data for two persons with made-up data, one that knows R and one that doesn't.
- j) Assign the mean age to variable `j`.
- k) Create a variable `k` and assign it a sub-data frame that only contains people that know R (without re-entering everything)
- m) Let's assume that we would like to encode linguistic properties of a text. The text is "the dog barks.", and you find prepared vectors with the data in the file `R/exercise.R` (words, pos, lemmas). Define a variable `m` that contains a data frame with each type of information as one column. Add a fourth column called "length" with the length of the tokens (using the function `nchar()`).


## Step 4
Your file `R/exercise.R` should now contain a number of lines with assignment statements (using `=`, `<-`, or `->`). Don't forget to save your file.
Now turning back to git: Add your file to the staging area (`git add R/exercise.R`), commit it (`git commit -m ""`, you need to fill in a commit message), and push it to the server (`git push --set-upstream origin BRANCHNAME`).

## Step 5

Wait a few minutes. Then go to https://github.com/idh-cologne-sprachverarbeitung-mit-r/exercise-04/actions, select your branch and watch for the results. If your commit has a green checkmark, you're good to go. If you see a red cross, there is a mistake in your code. In this case, you can click on the commit message and inspect the details of the mistake. After that, you should go back to step 4, fix the bug, and add/commit/push again.