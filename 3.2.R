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

#group_by()
by_package <- group_by(cran, package)
by_package
summarize(by_package, mean(size))

#Chaining
cran %>%
  select(ip_id, country, package, size) %>%
  mutate(size_mb = size / 2^20) %>%
  filter(size_mb <= 0.5) %>%
  arrange(desc(size_mb)) %>%
  print