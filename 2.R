#Exporting
df=data.frame(name=c("A","B","C","D"),age=c(10,20,30,40))
print(df)
write.csv(df,file="output.csv",row.names=FALSE)

#Importing
d=read.csv("C:/Users/neera/Documents/output.csv")
d