EMP_ID=c(1,2,3,4,5)
EMP_NAME=c("Satish","Vani","Ramesh","Praveen","Pallavi")
SALARY=c(5000,7500,10000,9500,4500)
START_DATE=c("01-11-2013","05-06-2011","21-09-1999","13-09-2005","23-10-2000")
data=data.frame(EMP_ID,EMP_NAME,SALARY,START_DATE)
print(data)

#Extract column names using column name
cn=data.frame(data$EMP_ID,data$EMP_NAME)
print(cn)

#Extract the first two rows and then all columns
cr=data[1:2,]
print(cr)

#Extract 3rd and 5th row with 2nd and 4th column
rc=data[c(3,5),c(2,4)]
print(rc)