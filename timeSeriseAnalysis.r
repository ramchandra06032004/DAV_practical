set.seed(123)
time_data = ts(rnorm(100, mean = 50, sd = 10), start = c(2020, 1), frequency = 12)

# Plot the time series data
plot(time_data, main = "Random Time Series Data", xlab = "Time", ylab = "Value", col = "blue", lwd = 2)
decomposed_data <- decompose(time_data)
plot(decomposed_data)

library(tseries)
acf(time_data, main = "ACF of Time Series Data")
pacf(time_data, main = "PACF of Time Series Data")

adf.test(time_data)

