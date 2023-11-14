print(mtcars)
plot(mpg~wt,data=mtcars,col=2)

#Linear Regression
fit=lm(mpg~wt,data=mtcars)
summary(fit)

abline(fit,col=3,lwd=2)
bs=round(coef(fit),3)
print(bs)

lmlab=paste0("mpg= ",bs[1],ifelse(sign(bs[2])==1,"+","-"),abs(bs[2]),"wt")
mtext(lmlab,3,line=-2)

#Multiple Regression
input=mtcars[,c("mpg","disp","hp","wt")]
head(input)

model=lm(mpg~disp+hp+wt,data=input)
print(model)

cat("#### The coefficient values ####","\n")
mpg=coef(model)[1]
disp=coef(model)[2]
hp=coef(model)[3]
wt=coef(model)[4]
print(mpg)
print(disp)
print(hp)
print(wt)