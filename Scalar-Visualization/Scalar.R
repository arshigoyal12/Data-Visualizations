# 4.	Identify the suitable idiom type and perform the following visualization.
# a.	Counts by a discrete variable.(Idiom type - bar chart)

dataset = read.csv("loan_sanction.csv")

library(ggplot2)
ggplot(dataset, aes(x=Gender)) + 
  geom_bar(fill="blue") +
  xlab("Gender") +
  ylab("Count") +
  ggtitle("Count of Participants by Gender")


ggplot(dataset, aes(x=Education)) + 
  geom_bar(fill="blue") +
  xlab("Gender") +
  ylab("Count") +
  ggtitle("Count of Participants by Gender")


ggplot(dataset, aes(x=Property_Area)) + 
  geom_bar(fill="blue") +
  xlab("Gender") +
  ylab("Count") +
  ggtitle("Count of Participants by Gender")


#b.	Numeric vs Numeric - (idiom type - scatterplot)

ggplot(dataset, aes(x=ApplicantIncome, y=LoanAmount)) + 
  geom_point(color="blue") +
  xlab("Applicant's Income") +
  ylab("Loan Amount") +
  ggtitle("Scatterplot of Income vs. Loan Amount")

ggplot(dataset, aes(x=ApplicantIncome, y=LoanAmount, shape=Gender, )) + 
  geom_point(color="red") +
  xlab("Applicant's Income") +
  ylab("Loan Amount") +
  ggtitle("Scatterplot of Income vs. Loan Amount")


# c.	Categorical vs. Categorical - (idiom type - clustered bar chart)

df1<-data.frame(table(dataset$Property_Area,dataset$Loan_Status))
names(df1) <- c("Property_Area","Loan_Status","Count")
df1
ggplot(df1, aes(x=Property_Area, y=Count, fill=Loan_Status)) + geom_bar(stat="identity", position = "dodge")


# d.	Comparison of Two or more categorical data (idiom type - Clustered Stacked bar chart)

df2<-data.frame(table(dataset$Property_Area,dataset$Loan_Status, dataset$Gender, dataset$Married, dataset$Education))
names(df2) <- c("Property_Area","Loan_Status", "Gender", "Married", "Education","Count")
df2

ggplot(df2, aes(x = Property_Area, y = Count))+
  geom_bar(
    aes(fill = Education), stat = "identity", color = "white",
    position = position_dodge(0.9)
  )+
  facet_wrap(~Gender)



# e.	Numeric vs one or more categorical data - (Idiom type - Stacked bar chart)

# Using a stacked bar chart, x axis- education grouped by Loan Status
# y axis - income

df <- data.frame(x = dataset$Education, y = dataset$ApplicantIncome, group = dataset$Loan_Status)

ggplot(df, aes(x = x, y = y, fill = group)) + 
  geom_bar(stat = "identity") +
  scale_fill_brewer() +
  xlab("Education") +
  ylab("Applicant's Income")



# f.	Relative Proportion of one or more categorical data

ggplot(dataset, aes(x = "", y = ApplicantIncome, fill = Property_Area)) +
  geom_col() +
  coord_polar(theta = "y")


ggplot(dataset, aes(x = "", y = ApplicantIncome, fill = Education)) +
  geom_col() +
  coord_polar(theta = "y")

