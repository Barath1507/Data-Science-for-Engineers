#advanced programming in R: functions
#functions, source, call
#a functions accepts input arguments and produces output by executing valid R commands present in the function
#function name and file names need not be the same
#a file can have one or more function definitions
#functions are created using the command function()
# f = function(arguments){
#   statements
# }


volcylinder = function(dia=5,len=100){
  vol= pi*dia^2*len/4
  return (vol)
}
#load
# v = volcylinder(5,10)
# > v
# [1] 196.3495
#vol = volcylinder() automatically the argument in the function default values
# vol= volcylinder(len= 10, dia=5) # pass the arguments in any order
# > vol
# [1] 196.3495



#lazy evaluations of functions in R
#functions are lazily evaluated, which means that if some arguments are missing, the functionis still excuted as long as the execution doesn't involve these arguments

#volcylinder = function(dia, len, rad)
#vol= pi*dia^2*len/4
#return(vol)
#vol= volcylinder(len= 10, dia=5)
#argument rad is missing, but the function is executed

#volcylinder = function(dia, len, rad)
#vol= pi*dia^2*len/4
#print(rad)
#return(vol)

#vol = volcylinder(dia= 5, len=10)
#here rad is used in the function body, which throws up error



#multiple inputs and multiple outputs
#volcylinder1