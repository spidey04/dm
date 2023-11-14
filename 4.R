#Mean
x=c(1,2,3,15,91,23,-5,8.2)
m=mean(x)
print(m)

#Trim
x=c(1,2,3,15,91,23,-5,8.2)
m=mean(x,trim=0.3)
print(m)

#Applying NA option
x=c(1,2,3,15,91,23,-5,8.2,NA)
m=mean(x)
print(m)

#dropping NA values
x=c(1,2,3,15,91,23,-5,8.2,NA)
m=mean(x,na.rm=TRUE)
print(m)

#Median
x=c(1,2,3,15,91,23,-5,8.2)
M=median(x)
print(M)

#Mode
getmode=function(y)
{
  m=unique(y)
  m[which.max(tabulate(match(y,m)))]
}
y=c(1,2,3,3,4,5)
getmode(y)

#Range
x=c(1,2,3,15,91,23,8.2)
range(x,na.rm=TRUE)
max(x)-min(x)

#Inter quartile Range
z=c(0,1,2,3,4,5,6,7,8,9,10)
IQR(z)

#Histograms
h<-c(1,4,8,6,3,7,2,9,55,77,99,10)
hist(h,xlab='Weight',col='green',border='blue')

#Boxplots
boxplot(mpg~cyl,data=mtcars,xlab='Number of Cylinders',ylab='Miles Per Gallon',main='Mileage Data')

#Scatterplots
input=mtcars[,c('wt','mpg')]
plot(x=input$wt,y=input$mpg,xlab='Weight',ylab='Mileage',xlim=c(2.5,5),ylim=c(15,30),main='Weight vs Mileage')