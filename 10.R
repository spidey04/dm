#kmedoids
library(cluster)
pam.result=pam(iris,3)
print(pam.result)
table(iris$Species,pam.result$clustering)
plot(pam.result)
