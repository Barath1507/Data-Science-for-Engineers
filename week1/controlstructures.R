#control structures
#Execute certain commands only when certain conditions is satisfied (if-then-else)
#Execute certain commands repeatedly and use a certain logic to stop the iteration (for, while loops)


#if-else-if family
#for loop
#nested for loops
#while

x = 6
if (x>7){
  x = x+1
}else if(x>8){
  x= x+2
}else{
  x = x+3
}

#sequence function
# seq(from, to, by, length)
# from = starting number
# to = ending number
# by = increment or decrement (width)
# length = Number of elements required
#seq(from = 1,to=10,length =5)

#for loops
n= 5
sum = 0
for(i in seq(1,n,1)){
  sum = sum+i
  print(c(i,sum))
}

#for loop with if break
n = 100
sum = 0
for(i in seq(1,n,1)){
  sum = sum+i
  print(c(i,sum))
  if (sum>15){
    break
  }   
  
}

#while loop
sum = 0
i = 0
Fin_sum= 15
while(sum<Fin_sum){
  i = i+1
  sum = sum+i
  print(c(i,sum))
}
