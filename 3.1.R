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

#select()
select(cran, ip_id, package, country)
select(cran, country:r_arch)

#filter()
filter(cran, package == "swirl")
filter(cran, r_version == "3.1.1", country == "US")

#arange()
cran2 <- select(cran, size:ip_id)
cran2
arrange(cran2, ip_id)
arrange(cran2, package, ip_id)

#mutate()
cran3<-select(cran, ip_id, package, size)
cran3
mutate(cran3, size_mb = size/2^20, size_gb = size_mb/2^10)
mutate(cran3, correct_size = size + 1000)

#summarize()
summarize(cran, avg_bytes = mean(size))