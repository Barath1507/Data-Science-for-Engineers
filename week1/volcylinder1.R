#functions in multiple input and multiple output
volcylinder1 = function(dia, len){
  volume= pi*dia^2*len/4
  surface_area = pi*dia*len
  result = list("volume"=volume, "surface_area"=surface_area)
  return(result)
}

#invoke the statements
# > result = volcylinder1(10,5)
# > result["volume"]
# $volume
# [1] 392.6991
# 
# > result["surface_area"]
# $surface_area
# [1] 157.0796


#inline functions
# > func = function(x) x^2+4*x+4
# > func(1)
# [1] 9
# > func(2)
# [1] 16


#looping over objects
#apply: apply a function over the margins of an array or matrix
#lapply: apply a function over a list
#tapply: apply a function over a ragged array
#mapply: multivariate version of lapply
#xxply (plyr package)


#apply
# > A = matrix(1:9,3,3)
# > A
# [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9
# > apply(A,1,sum) #row addition
# [1] 12 15 18
# > apply(A,2,sum) #column addition
# [1]  6 15 24



#lapply
# B = matrix(10:18,3,3)
# Mylist = list(A,B)
# > determinant = lapply(Mylist, det)
# > determinant
# [[1]]
# [1] 0
# 
# [[2]]
# [1] 5.329071e-15


#mapply (multivariate version) or several lists
# > dia = list(1,2,3,4)
# > len = list(7,4,3,2)
# > vol = mapply(volcylinder,dia, len)
# > vol
# [1]  5.497787 12.566371 21.205750 25.132741


#tapply
#tapply is used to apply a function over subset of vectors given by a combination of factors

# ID
# [1] 1 1 1 1 2 2 2 3 3
# > values
# [1] 1 2 3 4 5 6 7 8 9
# > tapply(values, ID, sum)
# 1  2  3 
# 10 18 17 

