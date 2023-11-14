#concatenation
x=c(1,2,3)
y=c(x,x,9)
y

#Indexing
x[1]
y[7]
y[-1]
y[-1:-3]
y[-length(y)]

#Subsetting
y[1:4]

#Multiplying a vector with a scalar
a=c(1,2,3,4)
b=c(5,6,7,8)
5*a

#add,sub,mul,div
a=c(1,2,3,4)
b=c(5,6,7,8)
a+b
a-b
a*b
a/b

#Dataframes
int_vec=c(1,2,3)
char_vec=c("a","b","c")
bool_vec=c(T,T,F)
data=data.frame(int_vec,char_vec,bool_vec)
print(data)

#functions
data1=data.frame(id=LETTERS[1:10],x=1:10,y=11:20)
print(data1)
head(data1)
tail(data1)
dim(data1)
nrow(data1)
ncol(data1)
str(data1)
colnames(data1)
sapply(data1,class)

#Retrieve data from dataframe
data1[1,3]
data1$y

#Lists
l1=list("Red","Green",c(1,2,3),TRUE)
print(l1)
l1[1]

#Merging lists
list1=list(1,2,3)
list2=list("a","b","c")
print(list1)
print(list2)
merged=c(list1,list2)
print(merged)

#Converting list to vector
list3=list(1:5)
list4=list(6:10)
print(list3)
print(list4)
v1=unlist(list3)
v2=unlist(list4)
print(v1)
print(v2)
result=v1+v2
print(result)

#Matrices
rbind(1:3,4:6)
cbind(c(1,2),c(3,4),c(5,6))
mat=rbind(c(1,2,3),c(4,5,6),7:9,10:12)
print(mat)
dim(mat)
dim(mat)[2]
nrow(mat)
ncol(mat)

#Retrieve elements from matrix using indexing
A=matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)
print(A)
A[3,2]
A[1,]
A[,2]
A[2:3]
A[,c(3,1)]

#Transpose
print(t(A))

#Scalar Multiplication
A*2

#Matrix add,sub,mul,inversion
B=matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)
print(B)
A-B
A+B
A%*%B
A1=matrix(c(1,2,3,4),nrow=2,ncol=2)
print(A1)
solve(A1)