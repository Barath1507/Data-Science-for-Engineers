#reads a file in a table format and creates a data frame from it
setwd("~/r_studio/week 8")

#multiple linear regression
nyc = read.csv("nyc.csv")
#View(nyc)
#head(nyc)
#tail(nyc)s of NYC
#menu pricing in restaurant
#y: Price of dinner
#x1: customer rating of the food
#x2: customer rating of the decor
#x3: customer rating of the service
#x4: if the restaurant is east or west

#pairwise scatter plot
plot(nyc,main = "Pairwise Scatter Plot")
#food vs decor randomly scattered
#food vs service strongly correlated

#round(cor(nyc),3)

#model building 

nycmod1 = lm(Price~Food+Service+East+Decor, data= nyc)

#or
#nycmod1 = lm(Price~.,data = nyc)

#summary(nycmod1)
#food, decor will have to include because < than 0.05
#food and decor explain the rice
#we can keep east also

# full model food east and decor perform better compared to reduced model intercept
nycmod2 = lm(Price~Food+East+Decor, data= nyc)

#service is not important in explaining the price

nycmod3 = lm(Price~Service+East+Decor, data= nyc)
#service is less important, food is explaining the price


