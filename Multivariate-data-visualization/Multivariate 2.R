# a. heatmaps
mtcars
view(mtcars)
library(ggplot2)
library(reshape2)
data("")

cor_df = melt(cor(mtcars))

ggplot(cor_df, aes(Var1, Var2, fill = value)) +
  geom_tile() + 
  scale_fill_gradient2(low = 'red', mid = 'white', high = 'blue', midpoint = 0) + 
  theme_minimal() +
  labs(x = "Car Features", y = "Car Features", fill = "Correlation") +
  ggtitle("Correlation between Cars' Features")

# b - cluster map dendogram
distance_mat = dist(mtcars, method = 'euclidean')
distance_mat

set.seed(240)
H_cl = hclust(distance_mat, method = 'average')
H_cl

plot(H_cl)

abline(h=110, col='blue')

fit = cutree(H_cl, k = 3)
fit

table(fit)
rect.hclust(H_cl, k = 3, border = 'blue')


# 2. table vs matrix 
data(iris)
library(dplyr)

iris_table <- iris %>%
  group_by(Species) %>%
  summarise(mean_petal_length = mean(Petal.Length),
            mean_petal_width = mean(Petal.Width))

iris_table

iris_matrix <- as.matrix(iris_table[, 2:3])

rownames(iris_matrix) <- iris_table$Species

colnames(iris_matrix) <- c("mean_petal_length", "mean_petal_width")
heatmap(iris_matrix, col = colorRampPalette(c("white", "red"))(100), scale = "column", margins = c(6, 10))


