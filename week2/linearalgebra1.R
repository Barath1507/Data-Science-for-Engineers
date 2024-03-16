#solving linear equations
#linear relationship using null matrix
#Ax= b
#A(mxn); x(nx1); b(mx1)
# m = n (number of equations and variables are the same) easy to solve
# m>n (more equations than the variables) no solution
# m<n (no.of equations less than no. of variables)


#case1
# m = n 
# A is full rank and determinant|A| not equal to 0 unique solution x = A^-1b
# A is not full rank consistent(infinity solutions) (Rank of the matrix less than n)
#                    inconsistent (no solution)



#Example 1
#matrix is full rank
A = matrix(c(1,2,3,4),ncol=2,byrow=F)
b = matrix(c(7,10),ncol= 1,byrow = T)
x= solve(A)%*%b
print(x) #x1=1,x2 = 2
#unique solution
# no other solution will be able to satisfy

#Example 2
#linearly dependent rank(m<n)
A = matrix(c(1,2,2,4),ncol=2,byrow=F)
b = matrix(c(5,10),ncol= 1,byrow = T)
#rank(A)= 1, nullity = 1
#equations are consistent with only one linearly independent equation
#the solution set for (x1,x2) is infinite because we have only one linearly independent equations and 2 variables
# one equation = two variables

#Example 3
#linearly dependent rank(m<n) rank(A)=1
A = matrix(c(1,2,2,4),ncol=2,byrow=F)
b = matrix(c(5,9),ncol= 1,byrow = T)
#x= solve(A)%*%b
#equations are inconsistent
#one we cannot find a solution to (x1,x2)

#case 2 m>n
#no. of equations is greater than the number of variables
#no solution 
# we can identify appropriate solution (opetimization perspective)

#(Ax-b)=0 perfect solution
#ax-b is a vector
#(Ax-b) = e (errors )
#By minimizing sum of all errors ei^2 (least square solution)
#instead mod
#minimizing sum of squared of error
#least square solution


#example

C = matrix(c(1,0,2,0,3,1), nrow = 3,ncol=2,byrow=T)
b = matrix(c(1,2,5),ncol= 1,byrow = T)

#(AT*A)^-1*AT*b
x = t(C) #transpose

#x= solve(A)%*%b
y = x%*%C
z = solve(y)%*%x
z1= z%*%b

new_result_of_b= C%*%z1
print(new_result_of_b)


#case 3 (m<n)
#problem of more attributes or variables than equations
#number of attributes is greater than the number of equations
#infinite solution case
# constrain optimization problem
#lagrangian function

#Example
C = matrix(c(1,2,3,0,0,1), nrow = 2,ncol=3,byrow=T)
b = matrix(c(2,1),ncol= 1,byrow = T)
#(AT*A)^-1*AT*b
x = t(C) #transpose

#x= solve(A)%*%b
y = C%*%x
deta= solve(y)
z = x%*%solve(y)
z1= z%*%b
print(z1)
#for finding the lambda
library(MASS)
m = ginv(C)%*%b #generalized
print(m)
#Generalization
#moore-penrose pseudo-inverse of a matrix
#the solution becomes x = A^+ b
#A+ == pseudo inverse
#singular value decomposition
#minimum non solution
#closes to origin






