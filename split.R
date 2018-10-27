#create vector of student names: divide into 2 groups
studentname=paste('student',1:1000, sep='-')
#group1 = 60% group2 = 40%
xy=studentname
length(xy)
(index= sample (x=length(xy),size=.6*length(xy)))
length(index)
train1=x[index]
test1=x[-index]
train1
test1
#create a large DF
sname=paste('s', 1:1000, sep='-')
gender = sample (x=c('Male','Female'),size=100,prob=c(.6,.4),replace=T)
marks=ceiling(rnorm(1000,60,10))
df= data.frame (sname, gender, marks)
head(df)
table (df$gender)
#split DF in to 2 parts 70% and 30%
#train- 70% of DF, test- 30% of DF
length(df)
nrow(df)
index2=sample (x=nrow(df), size=.7*nrow(df))         
index2
df[1:5,] ; df[c(1,5,7),]
train2=df[index2,]
nrow(train2)
test2=df[-index2,]
test2
nrow(test2)
#using caret
library(caret)
table(df$gender);prop.table(table(train3$gender))
(index3=createDataPartition(y=df$gender, p=0.5, list=F))
