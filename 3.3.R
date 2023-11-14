install.packages("swirl")
install.packages("dplyr")
swirl::install_course("Getting and Cleaning Data")
library("dplyr")
packageVersion("dplyr")
library("swirl")
path2csv
mydf<- read.csv(path2csv, stringsAsFactors = FALSE)
dim(mydf)
head(mydf)
library("dplyr")
cran <- tbl_df(mydf)
rm("mydf")
cran
library(tidyr)
library(readr)

#gather()
students
gather(students, sex, count, -grade)
students2
res <- gather(students2, sex_class, count, -grade)
res

#seperate()
separate(res, sex_class, c("sex", "class"))
parse_number("class5")

#tidying
students2 %>%
  gather(sex_class, count, -grade) %>%
  separate(sex_class, c("sex", "class")) %>%
  print

#bind_rows
bind_rows(passed, failed)