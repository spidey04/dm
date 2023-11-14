set.seed(150)
iris1=iris
iris1$Species=NULL
print(iris1)

#kmeans
km=kmeans(iris1,3)
print(km)

km$withinss
print(iris$Species)
table(iris$Species,km$cluster)
plot(iris1[,c("Sepal.Length","Sepal.Width")],col=km$cluster)