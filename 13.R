str(iris)
set.seed(150)
ind=sample(2,nrow(iris),replace=TRUE,prob=c(0.7,0.3))
print(ind)

trainData=iris[ind==1,]
testData=iris[ind==2,]
print(trainData)
print(testData)

#party
library(party)
myf=Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width
iris_ctree=ctree(myf,data=trainData)
table(predict(iris_ctree,newdata=testData),testData$Species)
print(iris_ctree)
plot(iris_ctree)

#rpart
library(rpart)
model=rpart(Species~.,data=iris)
par(xpd=NA)
plot(model)
text(model,digits=3)
print(model,digits=2)
newdata=data.frame(Sepal.Length=6.5,Sepal.Width=3.0,Petal.Length=5.2,Petal.Width=2.0)
predict(model,newdata,"class")