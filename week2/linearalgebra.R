#linear algebra for Data Science
# Data representation - matrix
# Several variables (how to solve)
#row to represent samples (Data points)
#column to represent Attributes (variables)

x = c(1,2,3)
y = c(2,4,6)
A = cbind(x,y) #transpose
print(A)
#from images we can represent matrix

#identification of independent attributes
#A = [pressure temp density viscosity]
#in that we find that density is function of pressure and temp
#Rank of the matrix (non zero rows) Rank(A)

#Example to find the rank of matrix
A = matrix(c(1,2,1,2,4,0,3,6,0),3,3, byrow=T)
# or A = matrix(c(1,2,3,2,4,6,1,0,0),3,3,byrow=F)
library(pracma)
print(Rank(A))

#Ab(beta) =0, b not equal to 0 (null space vectors) attributes

#nullity of A(No. of equations) + Rank of A(Number of independent variables) = Total no. of attributes of A(total no of variables)
#examp1le 
B = matrix(c(1,2,3,4,5,6),3,2,byrow =T)
#no of columns 
columns = ncol(B)
library(pracma)
rank= Rank(B)
nullity = columns-rank
print(nullity) 
#this implies that the null space of the matrix A does not contain any vectors
#thus we can claim that all the attributes are linearly independent

#example 2
C = matrix(c(1,2,0,2,4,0,3,6,1),3,3,byrow =T)
#no of columns 
columns2 = ncol(C)#3
library(pracma)
rank2= Rank(C) #2
nullity2 = columns2-rank2
print(nullity2)
#thus we need to identify the vectors in the null space of A which is non-zero in this case

D = matrix(c("b1","b2","b3"),1,3,byrow=T)
# b1+2b2 = 0
# b3 = 0
# b1 = -2b2
#null space vectors







