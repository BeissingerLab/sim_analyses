?table
NILS<-read.csv("C:/Users/hia5y7/Desktop/R/NILS.csv", header=TRUE)

NILS
as.matrix?
NILS2<-as.matrix(NILS)
NILS2
#just practice
rm(list="NILS")
uninstall.p

3+3
x^2
3^2
is.na(NILS)
summary(NILS)
x<- 1:10
x
x*2
x
x<-x*2
x
mean(x)
median(x)
sum(x)
sqrt(x)
summary(x)
help.start
?plot
?as.matrix
is.matrix(NILS)
is.matrix(x)
install.packages("ggplot2")
NILS[!x>0, (NILS2)]
URL<- "http://www.stanford.edu/~druau/pivot_table.csv"
pivot<- read.table(URL, sep=',', header=TRUE)
head(NILS2)
class(NILS2)
class(NILS)
help(package="foreign")
install.packages("foreign")
install.packages("xlsx")
tail(NILS, 6)
head(NILS, 10)
install.packages("reshape")
install.packages("sqldf")
install.packages("doBy")
8+5

1:250

print("Hello World!")
x<- 1:5
x
x= 1:5
x
y<- c(6,7,8,9,10)

a <- b <- c <- 3
i
x*y
browseURL("http://google-styleguide.googlecode.com/svn/trunk")
rm(x,y,a,b,c)
x
library(qtl)
search()
rm(Lists=URL)
library("ggplot2")
detach("package:ggplot2", unload=TRUE)
require("ggplot2")
update.packages()
y
y
y
y
N
remove.packages("doBy")
remove.packages("foreign")
fix(NILS)
anscombe
data(anscombe)
data(cars)
remove.packages("sqldf")
NILS4 <- read.table("C:/Users/hia5y7/Desktop/R/NILS.csv")
NILS4
str(NILS4)
view(NILS4)
View(NILS4)
rm(lists=NILS4)
UCBAdmissions
?UCBAdmissions
str(UCBAdmissions)
barplot(NILS2)
plot(NILS2)
margin.table(NILS2)
NILS2
NILS2[which(NILS2 == "N")] <- NA
margin.table("NILS2")
NILS2
prop.tablestr
str("NILS2")
str(NILS2)
install.packages("qtl")
?qtl
remove.packages("")




Data <- read.csv("C:/Users/hia5y7/Desktop/R/IBM_sample_data.csv",stringsAsFactors=F,na.strings=c("-","NA"))

Data2 <- as.matrix(Data)
Data3 <- Data2[,1:5]

Data2[which(Data2 == "A")] <- 0
Data2[which(Data2 == "B")] <- 1
Data2[which(is.na(Data2) == T)] <- 0.5

Data4 <- cbind(Data3,Data2[,6:ncol(Data2)])
Data5 <- as.data.frame(Data4,stringsAsFactors=F)
Data5[,6:ncol(Data5)] <- apply(Data5[,6:ncol(Data5)],2,as.numeric)





listeria.a <- data(listeria)
summary(listeria)
