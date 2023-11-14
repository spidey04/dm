install.packages("party")
library(party)
head(readingSkills)
input.data=readingSkills[c(1:105),]
output.tree=ctree(nativeSpeaker~age+shoeSize+score,data=input.data)
plot(output.tree)