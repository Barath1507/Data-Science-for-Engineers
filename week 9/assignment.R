#reads a file in a table format and creates a data frame from it
#rm(list = ls()) #to clear the environment
setwd("~/r_studio/week 9")
#clustering of trips
set.seed(123)
tripDetails = read.csv("USArrests.csv", row.names = "States")
#View(tripDetails)
normalized_data = scale(tripDetails)

tripCluster = kmeans(normalized_data,centers = 4,nstart = 20)
print(tripCluster)
wssper_cluster = tripCluster$withinss

print(wssper_cluster)



# Calculate the Total Sum of Squares (TSS)
tss <- sum(apply(normalized_data, 2, function(x) sum((x - mean(x))^2)))

# Calculate the Total Within-Cluster Sum of Squares (TWSS)
twss <- sum(tripDetails$withinss)

# Calculate the Between Cluster Sum-of-Squares (BCSS)
bcss <- tss - twss

# Print the range for BCSS
print(bcss)



# Calculate the Total Sum-of-Squares (TSS)
tss <- sum(apply(normalized_data, 2, function(x) sum((x - mean(x))^2)))

# Print the range for TSS
print(tss)

