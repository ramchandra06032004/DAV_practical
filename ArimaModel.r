library(tseries)
time_data=ts(rnorm(100,mean = 50,sd = 10),start = c(2025,1),frequency = 12)
library(forecast)
model=arima(time_data)
summary(model)
forcasted=forecast(model,12)
plot(forcasted)
forcasted
accuracy(forcasted)
