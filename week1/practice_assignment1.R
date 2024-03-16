# n=16
# x = seq(1,n,2)
# for (i in x){
#   if (i == 5){
#     print(i)
#     break
#   }
# }

# x =c(1:4) 
# y =c(6,3) 
# print(x*y)

# x1=matrix(10:18,3,3)
# x2=matrix(11:19,3,3)
# m =cbind(apply(x1,1,min),apply(x2,1,max))
# print(m)
# 
# y =apply(m,1,mean)
# print(y)


ID = c(1,2,3,4)
patient_name= c("Ram", "shyam", "nandini", "maya")
num.patient = 4
patient_list = list(num.patient, ID, patient_name)
print(patient_list)
print(patient_list[[3]][2])

for (i in patient_list[1]){
  for (j in i){
    print(j)
  }
}

x = 10+5%%3
print(typeof(x))

library(Matrix)
A = Matrix(c(9:1),3,3)
print(A)
print(A[3,2])


student_data = data.frame("student_id"=c(1:4), "student_name"=c("Ram","Harish","Pradeep","Rajesh"))
print(student_data)
student_data["student_dept"]= c("Commerce","Biology", "English","Tamil")
print(student_data)
student_data$student_dept=c("Commerce", "Biology", "English", "Tamil")
print(student_data)
student_data[[3]][4]
