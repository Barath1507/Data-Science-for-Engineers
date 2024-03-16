#vectors
#notion of distance
#projections
#hyperplanes
#halfspaces
#Eigenvalues and eigenvectors

#vector between the origin and datapoint

#euclidiean distance (one data point) d = sqrt(x1^2+x2^2
#two datapoint  l= sqrt((x1^2-x2^2)+(x2^2-x1^2))
#l =sqrt() (x1^2-x2^2)^T (x2^2-x1^2))

#unit vector is a vector with magnitude 1 (distance from origin)
#unit vectors are used to define directions in a coordinate system
#any vector can be written as a product of unit vector and scalar magnitude

#a = A/|A|

#orthogonal vectors
#two vectors are orthogonal to each other when their dot product is 0
#A.B = AT*B= 0
v1 = matrix(c(1,-2,4),nrow= 3,ncol=1,byrow=T)
v2 = matrix(c(2,5,2),nrow= 3,ncol= 1, byrow = T)
result = t(v1)%*%v2
print(result)
#vectors are orthogonal

# orthonormal vectors
#orthonormal vectors are orthogonal vectors with unit magnitude
#All orthonormal vectors are orthogonal

r1 = v1/((1^2+(-2^2)+4^2)^0.5)
r2 = v2/((2^2+(5^2)+2^2)^0.5)

#basis vectors R2
#infinite no. of vectors in two dimension
#we can able to represent the vectors in the form of linear combination
#independent of each other
#unique
#Basis vectors are set of vectors that are independent and span the space
#Finding Basis vectors

#rank of the matrix gives linearly independent columns
matA = matrix(c(6,5,8,11,1,2,3,4,9,4,7,10,-3,1,1,1,3,-1,-1,-1,14,7,12,17,11,8,13,18,7,0,1,2,2,-3,-4,-5,7,7,11,15),ncol=10,byrow=F)
library(pracma)
RankA= Rank(matA)
print(RankA)
#rank = 2
#any two independent columns can be picked from the above matrix as basis vectors


#Representaton of line and plane
#two equations and two variables makes point
#x - vector of variables
#AT*b = 0 orthogonality
#as same as nT(x1square-x2square)=0
#n is perpendicular to x1square-x2square)
#nT+b=0
#2 degree plane 
#n normal
#degree3-1 =2 plane
#3-2=1 line
#3-3=0 point

#projections
#data in to smaler vectors
#v1,v2 are basis vectors
# n is perpendicular

#Example
x1 = matrix(c(1,2,3),ncol=1,byrow =T)
x1t= t(x1)
#projecting this vector onto the space spanned by the vectors
v1 = matrix(c(1,-1,-2),ncol=1,byrow =T)
v1t=t(v1)
v2=matrix(c(2,0,1),ncol=1,byrow =T)
v2t=t(v2)

#checking orthogonal
ortho = v1t%*%v2
print(ortho)
#6 and 5 are magnitude of space spanned  by the vectors
#X = c1v1+c2v2
# c1=((x1t%*%v1)/6)
# print(c1)
# #c1 = fractions(c1)
# #c1v1=(v1*(-7/6))
# 
# print(fractions(c1v1))
# c2=((x1t%*%v2)/5)
# print(c2)
# c2v2=v2*1
# projection = c1v1+c2v2
# print(fractions(projection))

#projection generalization
#linearly independent vectors

#in simpler projection genralization

# hyperplanes
#geometrically, hyperplane is a geometric entity whose dimension is one less than that of its ambient space
#For instance, the hyperplanes for a 3d space are 2d [lanes,
#the hyper planes for a 2d space are 1d lines
#xTn+b = 0
#hyperplanes are not subspaces 
#xT*n =0 to the origin then hyperplane becomes subspaces


#halfspace
#xTn+b=0 line
#xTn+b>0 subspace in the n direction  yTn 0-90,270-360
#xTn+b<0 subspace in the n direction   90-180.218-270
#binary classification
#aTb =|a||b|cos(theta)

#eigen values
#Ax=b
#lambda +ve lambda<1 (represents the amount of stretch or shrinkage the attributes x go through in the x direction)
#x= eigen vectors, lambda = eigen values
#Eigen values (A-lambda I)=0 not a full rank

# we are looking for non trivial solution

#example
matb = matrix(c(8,7,2,3),2,2,byrow=T)
eval= eigen(matb)
print(eval)
values = eval$values
print(values)
#eigen vectors generally expressed in unit vector form

#when eigen values becomes complex, eigen vectors also becomes complex
#if the matrix is symmetric, then the eigenvalues are always real
#Further, there will always be n linearly independent eigenvectors for symmetric matrices
#AT*A symmetric

#columnspace and null space
#a miu av=0 lambda =0
#The eigen vectors corresponding to zero eigenvalues in the null space of the matrix
#conversely, if the eigenvalue corresponding to an eigenvector is not zero then eigenvector cannot be in the null space

#A is symmetric
#r zero eigenvalues r eigenvectors,  rank + nility = n, rank = n-r
#n-r linear independent vectors
#n-r non zero eigenvalues
#this implies that eigen vectors corresponding to the nonzero eigenvalues form a basis for the columnspace

matc = matrix(c(0.36,0.48,0,0.48,0.64,0,0,0,2),3,3,byrow=T)
eval= eigen(matc)
print(eval)
values = eval$values
print(values)

matd = matrix(c(4,-1,-1,2),2,byrow=T)
eval1= eigen(matd)
print(eval1)
values = eval1$values
print(values)

