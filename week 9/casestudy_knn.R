#reads a file in a table format and creates a data frame from it
setwd("~/r_studio/week 9")
#automotive service case study
#install caret for confusion matrix, class for knn
ServiceTrain = read.csv("serviceTrainData.csv")
ServiceTest = read.csv("serviceTestData.csv")

#view
str(ServiceTrain) #data types
str(ServiceTest)
ServiceTest$Service <- factor(ServiceTest$Service)

# Display frequency table
table(ServiceTest$service)
ServiceTrain$Service <- factor(ServiceTrain$Service)

# Display frequency table
table(ServiceTrain$service)
summary(ServiceTest) 
summary(ServiceTrain)
library(class)
predictedknn = knn(train= ServiceTrain[,-6],       #exclude column 6
                   test = ServiceTest[,-6],
                   cl = ServiceTrain$Service,
                   k = 3)


conf_matrix = table(predictedknn, ServiceTest[,6])
 print(conf_matrix)

 #a measure of accuracy is calculated by summing the true positives and true negatives
 #dividing them total number of samples
 
 knn_accuracy = sum(diag(conf_matrix))/nrow(ServiceTest)
 print(knn_accuracy)
 
 #service is needed for only 36 cars
 
 #caret package for confusion matrix
 library(caret)
 conF_matrix = confusionMatrix(data = predictedknn, ServiceTest$Service)
 print(conF_matrix)
 #all the values are correctly specified
 #that's why sensitivity and specificivity is 1
