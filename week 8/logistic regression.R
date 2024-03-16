#reads a file in a table format and creates a data frame from it
setwd("~/r_studio/week 8")
#automotive crash testing

crashTest_1 = read.csv("crashTest_1.csv", row.names=1)
crashTest_1_TEST= read.csv("crashTest_1_TEST.csv", row.names=1)
#View(crashTest_1)
#View(crashTest_1_TEST)

#structure of data str(crashTest_1)
#summary(crashTest_1)
#summary(crashTest_1_TEST)
#glm generalized linear moel
#glm(formula, data, family)
# Example: Fitting a logistic regression model
# Convert CarType to factor
crashTest_1$CarType <- factor(crashTest_1$CarType)

# Display frequency table
table(crashTest_1$CarType)



logisfit <- glm(formula = crashTest_1$CarType ~ ., family = 'binomial', data = crashTest_1)
#binomial corresponds to logistic regression

#logisfit
#summary(logisfit)

#finding the odds
logisTrain = predict(logisfit, type = 'response')

plot(logisTrain)

#classes are well separated
#which side belongs to which carType
#mean of probabilities
#this helps us identify the probabilities  associated with the two classes
#tapply(logisTrain, crashTest_1$CarType, mean)

#lower probability hatchback
#higher probability SUV


#predicting on test set
logisPred = predict(logisfit, newdata = crashTest_1_TEST, type = 'response')
plot(logisPred)



#results 
crashTest_1_TEST[logisPred<=0.5, "LogisPred"] <-"Hatchback"

crashTest_1_TEST[logisPred>0.5, "LogisPred"] <-"SUV"




confusionMatrix(table(crashTest_1_TEST[,7],
                      crashTest_1_TEST[,6]), positive= 'Hatchback')







