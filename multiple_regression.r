library(readr)
library(nnet)
df=read_csv("Iris.csv")
n=nrow(df)
n

randomeIndex=sample(1:n,0.75*n)
randomeIndex
trainData=df[randomeIndex,]
View(trainData)
testData=df[-randomeIndex,]
View(testData)
model<-multinom(Species~SepalLengthCm+SepalWidthCm+PetalLengthCm+PetalWidthCm, data=trainData)
summary(model)
pridictions<-predict(model,testData)
accuracy<-mean(pridictions==testData$Species)
accuracy

