#bar plot(H, names.arg, xlab,ylab, main, names.arg, col)colour
H = c(73,75,55,60,66,71,81,67,83,75,82,71,63,55,72,78,67,67,65,59)
hist(H,xlab= "Height of trees",ylab="Frequency",col="pink", main = "Sample of 20 heights of black cherry trees")


boxplot(H,xlab= "Height of trees",ylab="Frequency",col="pink", main = "Sample of 20 heights of black cherry trees")

x = qchisq(0.5,df= 4)
print(x)

alpha <- 0.025
f <- 2.05 / 7.64
df1 <- 50 - 1  # degrees of freedom for the first sample (n1 - 1)
df2 <- 50 - 1  # degrees of freedom for the second sample (n2 - 1)

# Calculate critical value
critical_value <- qf(1 - alpha, df1, df2, lower.tail = FALSE)

# Print critical value
print(critical_value)

alpha1 <- 0.975
f <- 2.05 / 7.64
df1 <- 50 - 1  # degrees of freedom for the first sample (n1 - 1)
df2 <- 50 - 1  # degrees of freedom for the second sample (n2 - 1)

# Calculate critical value
critical_value <- qf(1 - alpha1, df1, df2, lower.tail = FALSE)

# Print critical value
print(critical_value)


#test for mean
n<- 25
x_bar <- 51.3
mu_0 <- 50
sigma <- 2
alpha <- 0.05

# Calculate the z-statistic
z <- (x_bar - mu_0) / (sigma / sqrt(n))

# Calculate the critical value
critical_value <- qnorm(1 - alpha/2, lower.tail = FALSE)

# Print the results
print(paste("z-statistic:", z))
print(paste("Critical value:", critical_value))

# Perform the hypothesis test
if (abs(z) > critical_value) {
  print("Reject the null hypothesis: The average burning rate is significantly different from 50 cm/s.")
} else {
  print("Fail to reject the null hypothesis: There is no significant difference in the average burning rate.")
}


alpha <- 0.05
critical_value <- qnorm(1 - alpha/2)  # For a two-tailed test
print(critical_value)

#2
# Given data
x1 <- 70
s1 <- 3.3665
n1 <- 10  # number of observations in group 1

x2 <- 74
s2 <- 5.3955
n2 <- 10  # number of observations in group 2

# Calculate pooled standard deviation (assuming unequal variances)
s_pooled <- sqrt(((n1 - 1) * s1^2 + (n2 - 1) * s2^2) / (n1 + n2 - 2))

# Calculate t-statistic
t_stat <- (x1 - x2) / (s_pooled * sqrt(1/n1 + 1/n2))

# Degrees of freedom
df <- n1 + n2 - 2

# Significance level
alpha <- 0.05

# Critical value
critical_value <- qt(1 - alpha, df, lower.tail = FALSE)

# Print results
print(paste("t-statistic:", round(t_stat, 4)))
print(paste("Critical value:", round(critical_value, 4)))


