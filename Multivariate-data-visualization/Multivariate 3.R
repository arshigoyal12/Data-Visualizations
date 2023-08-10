# Loading package
library(dplyr)

# Summary of dataset in package
head(mtcars)
View(mtcars)

# Finding distance matrix
distance_mat <- dist(mtcars, method = 'euclidean')
distance_mat

# Fitting Hierarchical clustering Model
# to training dataset
set.seed(240)  # Setting seed
Hierar_cl <- hclust(distance_mat, method = "average")
Hierar_cl

# Plotting dendrogram
plot(Hierar_cl)

# Choosing no. of clusters
# Cutting tree by height
abline(h = 110, col = "green")

# Cutting tree by no. of clusters
fit <- cutree(Hierar_cl, k = 3 )
fit

table(fit)
rect.hclust(Hierar_cl, k = 3, border = "green")


# tree map

#Loading the dataset
df = mtcars
#Adding column of Row Names
df <- cbind(newColName = rownames(df), df) 
rownames(df) <- 1:nrow(df)
str(df)

#Loading Neccessary Libraries
library(ggplot2)
library(treemapify)

#Plotting the treemap of Horse Power of different car models
pl <- ggplot(data = df, aes(fill = newColName, area = hp,label = paste(newColName,"\n", hp)))
pl <- pl + geom_treemap()
pl <- pl + geom_treemap_text(colour ="white", place = "centre")
pl <- pl + theme(legend.position = 'none')
pl <- pl + ggtitle("Horse Power (HP) of different Variants")
pl


