#10 obs with 3 variables
EMP_NAME=c("A","B","C","D","E","F","G","H","I","J")
SALARY=c(1,2,3,4,5,6,7,8,9,10)
ROOM_NO=c(101,102,103,104,105,106,107,108,109,110)
emp.data=data.frame(EMP_NAME,SALARY,ROOM_NO)
print(emp.data)
str(emp.data)

#adding new row to the dataframe using rbind
emp.data=rbind(emp.data,c("K",11,111))
print(emp.data)

#adding new column to the dataframe using cbind
CITY=c("B","B","B","B","B","B","B","B","B","B","B")
emp.data=cbind(emp.data,CITY)
print(emp.data)