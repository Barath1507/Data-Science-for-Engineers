#reads a file in a table format and creates a data frame from it
#rm(list = ls()) #to clear the environment
setwd("~/r_studio/week 9")
#clustering of trips
#uber cab driver has attended 91 trips in a week (5days)
#install caret for confusion matrix, class for knn
tripDetails = read.csv("tripDetails.csv", row.names = 1)
#View(tripDetails)
#str() internal structure of the r object
#summary() five point summary

#k means clustering (unlabelled data)
#labelled data means that trip length is short trip, long trip


#object = kmeans(x, centers, iter.max = 10, nstart=1)

#x = numeric matrix of data
#centers = either the number of clusters, say k, or a set of 
#initial(distinct) cluster centers. If a number, a random set of (distinct)rows
#in is chosen as the initial centers

#nstart = If centers is a number, how many random sets should be chosen?
#iter.max = the maximum number of iterations allowed.


tripCluster = kmeans(tripDetails,3)
print(tripCluster)

#each cluster mean will be there
#trip length = 19 short trip
#trip length = 174 long trip


# with in cluster sum of squares by clusten (how much variance is there)
#elbow method

# method to calculate optimal k
k.max = 10 #maximum cluster assumed

wss = rep(NA,k.max)
nClust= list()
for (i in 1:k.max){
  driveClasses = kmeans(tripDetails,i)
  wss[i] = driveClasses$tot.withinss #wss within sum of squares
  nClust[[i]]= driveClasses$size
  
}
plot(1:k.max, wss, type = "b", pch = 19,
     xlab = "Number of cluster K",
     ylab = "Total wihtin-clusters sum of squares:Trips")



#so we can select 3 for optimal no of clusters



