library(ggplot2)
library(readr)
df<- read_csv("Iris.csv")
View(df)

#scatter plot
plot(x = df$SepalLengthCm, y = df$SepalWidthCm, main = "Sepal Length vs Sepal Width", xlab = "Sepal Length (cm)", ylab = "Sepal Width (cm)",, pch = 19)

#boxplot
boxplot(df$SepalLengthCm ~ df$Species, main = "Sepal Length by Species", xlab = "Species", ylab = "Sepal Length (cm)", col = c("red", "green", "blue"))

#histogram
hist(df$SepalLengthCm, main = "Histogram of Sepal Length", xlab = "Sepal Length (cm)", col = "lightblue", border = "black")

#barplot
barplot(table(df$Species), main = "Count of Species", xlab = "Species", ylab = "Count", col = c("red", "green", "blue"))

#violin plot
ggplot(df, aes(x = Species, y = SepalLengthCm,fill=Species)) +
  geom_violin(trim = FALSE) +
  labs(title = "Violin Plot of Sepal Length by Species", x = "Species", y = "Sepal Length (cm)")+
    theme_minimal() 

