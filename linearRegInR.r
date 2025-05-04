library(readr)
df<- read_csv("Iris.csv")
View(df)
plot(df$SepalLengthCm, df$PetalWidthCm)

model<-lm(data=df, PetalWidthCm~SepalLengthCm)
summary(model)
pridictions<-predict(model, df) 
pridictions
plot(pridictions)
plot(df$PetalWidthCm)

#plot abline
plot(df$SepalLengthCm, df$PetalWidthCm, main = "Sepal Length vs Petal Width", xlab = "Sepal Length (cm)", ylab = "Petal Width (cm)", pch = 19)
abline(model, col = "red")

accuracy<-mean(pridictions==df$PetalWidthCm)
accuracy




