library(ggplot2)
library(dplyr)
library(RColorBrewer)

dataset = read.csv("C:/Users/hp/Desktop/VIT/6th sem/CSI3005 Advanced Data Visualization Techniques/LAB/da3/loan_sanction.csv")
dataset

# HISTOGRAM
ggplot(dataset, aes(x= LoanAmount)) + 
  geom_histogram()


# RAINBOW COLORMAP
pie(dataset$ApplicantIncome, col= rainbow(12), main = "RGB/HSV")

hist(dataset$ApplicantIncome, col = rainbow(12), main = "RGB/HSV")


# GREY SCALE
ggplot(dataset, aes(x=Property_Area, fill=Property_Area)) + 
  geom_bar() +
  xlab("Property_Area") +
  ylab("Count") +
  ggtitle("Count of Participants by Property_Area") +
  scale_fill_grey(start = 0.8, end = 0.2)

# RAINBOW
ggplot(dataset, aes(x=Property_Area, fill=Property_Area)) + 
  geom_bar() +
  xlab("Property_Area") +
  ylab("Count") +
  ggtitle("Count of Participants by Property_Area") +
  scale_fill_brewer(palette = "Dark2")

ggplot(dataset, aes(x = "", y = ApplicantIncome, fill = Education)) +
  geom_col() +
  coord_polar(theta = "y") +
  scale_fill_brewer(palette = "Dark2")

# gantt chart
library(ggthemes)
dataset2 = read.csv("C:/Users/hp/Desktop/VIT/6th sem/CSI3005 Advanced Data Visualization Techniques/LAB/da4/gantt chart.csv")
dataset2

ggplot(dataset2, aes(x=start, xend=end, y=task, yend=task, color=shift)) +
  theme_bw() +
  geom_segment(size = 8) +
  labs(title='Task Schedule', x='Time', y='Worker Name')

