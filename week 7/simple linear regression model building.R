#reads a file in a table format and creates a data frame from it
setwd("~/r_studio/week 7")


bonds = read.delim("bonds.txt", row.names=1)

#str(bonds)
#summary(bonds) gives mean and five number summary

plot(bonds$CouponRate, bonds$BidPrice,
     main = "Bid Price Vs Coupon Rate",
     xlab = "Coupon Rate",
     ylab = "Bid Price")
 #bondsmod = lm(bonds$BidPrice~bonds$CouponRate)
 #or
#yihat is the bondsmod
#yi = beta0 +beta1 xi
bondsmod = lm(BidPrice~CouponRate, data = bonds)
abline(bondsmod)
summary(bondsmod)
 
#Hypothesis test on coefficients
# alpha = 0.05
# n= 35
# p = 1
# qt(p=1-(alpha/2), df = n-p-1)
# print(qt)

#confidence interval for beta 1 hat
#3.0661-(2.034515*0.3068)
#3.0661+(2.034515*0.3068)
#beta 1 slope is significant

#calculating F-statistic
sse = sum((bonds$BidPrice-bondsmod$fitted.values)^2)
print(sse)

ssr =sum((bondsmod$fitted.values-mean(bonds$BidPrice))^2)
print(ssr)

n = 35#degrees of freedom
fstats = (ssr/sse)*(n-2)
print(fstats)


#identify outliers and anlyse the outlier by every iteration
plot(bondsmod$fitted.values, rstandard(bondsmod),
     main = "Residual Plot",
     xlab = "predicted values for bid price",
     ylab = "Standardized Residuals")
abline(h = 2, lty = 2)
abline(h = -2, lty = 2 )
#we can see confidence levels

identify(bondsmod$fitted.values, rstandard(bondsmod))
#4, 13, 34, 35 outliers

#removing outliers one by one
# Specify the indices of the rows to remove
rows_to_remove = c(35, 13, 4, 34)

# Remove the specified rows from the data frame
bonds_new = bonds[-rows_to_remove, ]


bondsmod1 = lm(bonds_new$BidPrice ~ bonds_new$CouponRate )
print(summary(bondsmod1))


plot(bonds$CouponRate[-c(4,34,13,35)],
     bonds$BidPrice[-c(4,13,34,35)],
     main = "Bid Price vs Coupon Rate without outliers",
     xlab = "Coupon Rate",
     ylab = "Bid Price")
abline(bondsmod1)
#aaaaaaaaaaaaaaaaaaaaaaaaaaaaa
#assignment sum

# Read the data from the "bonds.txt" file
bonds <- read.table("bonds.txt", header = TRUE)

# Fit a linear regression model
model <- lm(BidPrice ~ CouponRate, data = bonds)

# Predict the bid price for a bond with a coupon rate of 3
coupon_rate <- 3
predicted_bid_price <- predict(model, newdata = data.frame(CouponRate = coupon_rate))

# Find the actual bid price for a bond with a coupon rate of 3
actual_bid_price <- bonds$BidPrice[bonds$CouponRate == coupon_rate]

# Calculate the residual error
residual_error <- actual_bid_price - predicted_bid_price

residual_error

#assignment sum
# Given data
x <- c(80, 75, 85, 70, 65)
y <- c(85, 70, 80, 95, 70)

# Calculate mean of y
mean_y <- mean(y)

# Calculate SST
SST <- sum((y - mean_y)^2)

# Calculate predicted values from the model
predicted_y <- 0.2 * x + 60

# Calculate SSR
SSR <- sum((predicted_y - mean_y)^2)

# Calculate R^2
R_squared <- SSR / SST

# Calculate Adjusted R^2
n <- length(y)
p <- 1  # We have only one predictor (x)
adjusted_R_squared <- 1 - ((1 - R_squared) * (n - 1) / (n - p - 1))


