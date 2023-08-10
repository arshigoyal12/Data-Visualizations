# Load required packages
library(GGally)
library(datasets)

# Load the iris dataset
data(iris)
head(iris)

# Create a scatterplot matrix
pairs(iris[, 1:4])

# pair plot
# load required packages
library(ggplot2)
library(GGally)

# load mtcars dataset
data(mtcars)

# create pair plot using ggplot2 and GGally
ggpairs(mtcars, columns=1:7, aes(color=factor(cyl)))
