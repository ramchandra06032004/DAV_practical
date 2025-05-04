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

accuracy<-mean(pridictions==df$PetalWidthCm)
accuracy




