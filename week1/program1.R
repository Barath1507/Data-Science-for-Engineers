#This program takes a single number and calculates a value of 10 times of it

a=14
b=a*10
print(c(a,b))
 
# a = 15
# b = 16
# klfdskkldfldksf

#save(a,file = "program1.Rdata") to save single variable "a"

#to save a full workspace wiht specified file name
#save(list= ls(all.names= TRUE), file = "sess1.Rdata")
#save.image()
#load(file= "sess1.Rdata")
# d = 1+2i
# e = 2+2i
# f= d+e
# print(f)

#vector
x = c(1,2,3)
print(x)

#list
ID = c(1,2,3,4)
emp.name = c("Man", "Rag", "sha", "din")
num.emp= 4
emp.list = list(ID, emp.name, num.emp)
print(emp.list)

emp.list = list("Id"= ID, "Names" = emp.name, "Total staff" = num.emp)
print(emp.list$Names)
print(emp.list[[1]])
print(emp.list[[2]])
print(emp.list[[1]][1])
print(emp.list[[2]][2])

#manupulating
emp.list["Total staff"]= 5
emp.list[[2]][5]= "Nir"
emp.list[[1]][5]=5
print(emp.list)

#concatenation of lists
emp.ages = list("ages" = c(23,54,85,65,45))
emp.list = c(emp.list,emp.ages)
print(emp.list)


#Data frames
#data frames are generic data objects of R, used to store tabular data

vec1 = c(1,2,3)
vec2= c("R", "Scilab", "Java")
vec3 = c("For prototyping", "For prototyping", "For Scaleup")
df = data.frame(vec1, vec2, vec3)
print(df)

#creating a data frame using data from a file
#newDf = read.table("path of the file")
#newDf = read.table("path of the file", sep)

#accessing rows and columns
#accessing first and second row
print(df[1:2,])

#accessing first and second column
print(df[,1:2])
#alternate (accessing columns)
print(df[1:2])


#subset
pd = data.frame("name"= c("senthil","senthil","sam","sam"),"month" = c("Jan","Feb","Jan","Feb"),"age" = c(14,52,45,65),"BS"= c(141.2,139.3,135.2,160.1), "BP" = c(90,78,80,81))
pd2 = subset(pd,name=="senthil"| BS>140)
print("new subset pd2")
print(pd2)

#editing data frames
df = data.frame(vec1, vec2, vec3)
print(df)
df[[2]][3] = "R"
print(df)

#editing a data frame
#myTable = data.frame()
#myTable = edit(myTable)

#adding extra rows and columns
df = rbind(df, data.frame(vec1=4, vec2= "c", vec3= "for scaleup"))
print("adding extra row")
print(df)
df = cbind(df, data.frame(vec4= c(10,20,30,42)))
print("adding extra column")
print(df)

#deleting rows and colmns
df2 = df[-3,-1]
print(df2)
#conditional deletion:
df3 = df[,!names(df)%in%c("vec3")]
print(df3)
df4 = df[!df$vec1==3,]
print(df4)

#manupulating rows in data frame
df[3,1] = 3.1
df[3,3] = "others"
print(df)

#resolving factor issue NA
df = data.frame(vec1, vec2, vec3, stringsAsFactors = F)
df[3,3]= "Others"
print(df)

#Recasting and joining of dataframes
#Recasting is the process of manipulating a dataframe in terms of its variables
#reshaping the data insights
# two steps melt and cast
#Identifier(discrete type variables)
#measurements(numeric variables) [categorical and data variables are not measurements]
# name month - identifier variables
# bs, bp, age - measurement variables

# melt operation
library(reshape2)
Df = melt(pd, id.vars = c("name","month","age" ),measure.vars= c("BS","BP"))
print(Df)
#step 2 cast
# dcast(DF, constant~values)
Df = Df[,-3]
Df2 = dcast(Df,variable+month~name, value.var= "value")
print(Df2)


#recast 
#recast(pd, variable+month~name,id.var= c("name", "month"))

#add new variabe to the data frame based on existing ones
#call the library "dplyr"
#mutate() command will add extra variable columns based on existing one

#adding new variables
library(dplyr)
pd2=mutate(pd, log_BP = log(BP))
print(pd2)

#joining of two dataframes (common variables merge)
pd3 <- data.frame("ID" = c(1, 2), "Name" = c("Jack", "Jill"), "age" = c(14, 52))
pd4 <- data.frame("ID" = c(2, 1), "Gender" = c("Girl", "Boy"))

pd5 <- merge(pd3, pd4, by = "ID")
print(pd5)

#combining two data frames leftjoin(), right_join(), inner_join(), full_join(), semi_join(), anti_join()
pd = pd[,-3]
#another dataframe
pd_new = data.frame("name"= c("senthil","ramesh", "sam"),"Department"= c("PSE","Data Analytics", "PSE"))

#left_join() it will not take ramesh
library(dplyr)
pd_left_join1= left_join(pd,pd_new, by= "name")
print(pd_left_join1)

#right_join
library(dplyr)
pd_right_join= right_join(pd,pd_new, by= "name")
print(pd_right_join)

library(dplyr)
pd_right_join2= right_join(pd_new,pd, by= "name")
print(pd_right_join2)

#inner_join
library(dplyr)
pd_inner_join= inner_join(pd_new,pd, by= "name")
print(pd_inner_join)

#full_join()
library(dplyr)
pd_full_join= full_join(pd_new,pd, by= "name")
print(pd_full_join)
#semi_join()
library(dplyr)
pd_semi_join= semi_join(pd_new,pd, by= "name")
print(pd_semi_join)
#anti_join()
library(dplyr)
pd_anti_join= anti_join(pd_new,pd, by= "name")
print(pd_anti_join)


#Arithmetic, logical and matrix operations in R
#Arithmetic operations
# Symbols 
# =,<-  Assignment
#   +   Addition
#   -   Subtraction
#   *   Multiplication 
#   /   Division
#   ^,** Exponent
#   %%   Remainder
#   %/%  Integer division


# order of precedence
# Bracket
# Exponent
# division
# multiplication
# addition
# subtraction
aa = 7-(2*(27/(3^2)))+4
print(aa)

#logical operations
#isTrue Test if variable is TRUE = 1

#matrix operations
#a matrix is a rectangular arrangement of numbers in rows and columns
#Rows run horizontally and column run vertically
matrixA = matrix()
matrixA = matrix(c(1,2,3,4,5,6,7,8,9))
matrixA = matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow= TRUE)
print(matrixA)

#scalar matrix
matrixB = matrix(3,3,3)
print(matrixB)

#Diagonal matrix
matrixC = diag(1,3,3) #values, rows, columns
print(matrixC)
matrixD = diag(c(4,5,6),3,3)
print(matrixD)

#identity matrix
matrixE = matrix(1,3,3)
print(matrixE)

#creating matrices
matrixF = matrix(c(3,5,-2,0),nrow = 2, ncol = 2, byrow = TRUE)
print(matrixF)

#matrix metrics
#dim(matrixA) #dimensions
#nrow(matrixA)
#ncol(matrixA)
#length(matrixA)


#accessing, editing, deleting elements in matrices
#array/value before , for accessing rows
#array/value after , for accessing columns
#use of '-' for removing rows/columns

matrixG = matrix(c(1,2,3,4,5,6,7,8,9), 3,3,byrow = T)
colnames(matrixG) = c("a","b","c")
rownames(matrixG)= c("d","e","f")

print(matrixG)
print(matrixG[,1:2])
print(matrixG[,c("a","c")])
print(matrixG[c("d","f"),])
#access element
print(matrixG[1,2])#2

#access row
print(matrixG[1,])
#access column
print(matrixG[,1])

#deleting the column/row
matrixH = matrixG[-2,]
print(matrixH)
matrixI = matrixG[,-1]
print(matrixI)

#exercise
matrixJ = matrix(c(1,7,3,4,4,6,4,7,12),3,3,byrow= T)
matrixJ[3,3]=13 #change element
print(matrixJ[,-1])

#colon operator 
matrixK= matrix(c(1:9),3,3,byrow= T)
print(matrixK)
#accessing submatrices
matrixL = matrixK[c(1,3),c(1,2)]
print(matrixL)

#exercise
matrixM= matrixK[c(1,2),c(1,3)]
print(matrixM)

#matrix concatenation (merging of row or column)
#rbind, cbind
print(matrixK)
matrixN = matrix(c(12,13,14),1,3,byrow = T)
print(matrixN)
matrixO = rbind(matrixK,matrixN)
print(matrixO)

matrixP = matrix(c(10,11,12),3,1,byrow=T)
print(matrixP)
print(cbind(matrixK,matrixP))

#matrix algebraic operations = Addition, subtraction, multiplication, matrix operations in R, matrix division
#matrix addition/subtraction
add = matrixK+matrixA
print(add)
sub = matrixK-matrixA
print(sub)

#multiplication
mul = matrixK%*%matrixA
print(mul)

#matrix division
e1 = matrix(c(4,9,16,25),2,2,byrow=T)
e2 = matrix(c(2,3,5,4,5),2,2,byrow= T)
#a/b element wise division

#advanced programming in R: functions
#functions, source, call
#a functions accepts input arguments and produces output by executing valid R commands present in the function
#function name and file names need not be the same
#a file can have one or more function definitions
#functions are created using the command function()
# f = function(arguments){
#   statements
# }

#volcylinder
