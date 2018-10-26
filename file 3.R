#starting to work in R

#assign
x1=3
x2<-3
#print values
x1
x2
#Assign and Print
(x3=3)
#environment
#variables in env
ls()
#datasets available for use
data()
women
?women
?mtcars
mtcars
mtcars $mpg
attach(mtcars)
mpg
#libraries currently loaded
library ()
#elements
ls()
rm(list=ls())
rm(list = ls (all=ture))
x1
#help
?mean
x <- c (0:10, 50)
x
print(x)
xm<- mean (x)
xm
c (xm, mean (x, trim=0.10))
help (mean)
#create values
1:100
seq(0,100, by=2)
seq (1,100, by=2)
seq (1,10, length.out=5)
rep (2,5)
rep(c(1,4), times= c(2,3))
x=c(0:10, 50)
x
#function on data
xm=mean(x)
xm
#version of R
version()
#todays date
Sys.Date()
#working directory
getwd()
#methods available for a class of object
methods (class='matrix')
#basic command to plot
plot (1:10)
#clean console by
#take cursor to console pane and press control + L

#run all commands in the source file test1.R
#first create a R file with some content in current dir
source('test1.R')
