#iris
head(iris)

#0 to 1 range with min-max normalization
m_mn=function(x)
{
  (x-min(x))/(max(x)-min(x))
}

iris_norm=as.data.frame(lapply(iris[1:4],m_mn))
head(iris_norm)

iris_norm$Species=iris$Species
head(iris_norm)

#a value around 0 with z-score normalization
iris_stan=as.data.frame(lapply(iris[1:4],scale))
head(iris_stan)

iris_stan$Species=iris$Species
head(iris_stan)