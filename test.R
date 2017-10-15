library(quantmod)
getSymbols("AAPL")
price_AAPL <- AAPL[,6]
plot(price_AAPL, main = "The price of AAPL")
returns_AAPL <- diff(log(price_AAPL))
plot(returns_AAPL, main = "AAPL % returns", col = "navyblue")
hist(returns_AAPL, breaks = 100, col="brown")
acf(returns_AAPL[-1], main = "Autocorrelation plot of returns")
mR  <- mean(returns_AAPL[-1])
sdR <- sd(returns_AAPL[-1])
mR
sdR
boxplot(cars$speed)
