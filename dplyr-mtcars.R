#analysis of data set mtcars using dplyr  
#filename: dplyr-mtcars.R

library(dplyr)
?mtcars
#structure of data set
str(mtcars) #structure
dim(mtcars) #dimension (column,row)
names(mtcars) ; colnames(mtcars) #coulumn names
rownames(mtcars) #row names
summary(mtcars) #summary of dataset
#summary activities on mtcars
t1=table(mtcars$am) #naming table(mtcars$am) as t1
pie(t1) #pie for t1
pie(t1, labels=c('auto','manual')) #naming pie chart
table(mtcars$gear) #creating table for gear 
t2=table(mtcars$gear) #naming table for gear as t2
pie(t2) #pie chart for t2
pie (t2, labels=c('three','four','five')) #labelling pie of t2
barplot(t2) #bar chart for t2
barplot (t2, col=1:3) #coloring bar chart
barplot (t2, horiz=T)
barplot (t2, col=c('red','blue','yellow'), xlab='gear', ylab='no of cars', ylim=c(0,20))
title(main='distribution of gears of cars', sub='no of gears')

#using dplyr %>% is changing function
mtcars %>% select (mpg,gear,vs) %>% slice (1:15)
#select for columns, slice for rows

mtcars %>% arrange (mpg) #ascending order of mileage

mtcars %>% arrange (vs, desc(mpg)) %>% select (am, vs, mpg) #ascending order of mileage, descending order of mpg

mtcars %>% arrange (carb, mpg) %>% select (carb, mpg, vs)

mtcars %>% mutate (rn= rownames(mtcars)) %>% select (rn, mpg) %>% sample_frac(.3)

#display rownames with mpg
mtcars%>% slice(c(1,5,7))
mtcars%>% sample_n(3)
mtcars%>% sample_frac(.2)
mtcars%>% select(sample(x=c(1:11), size=2)) %>% head
sample(x=1:11, size=2)
mtcars %>% mutate (newmpg=mpg*1.1)
mutate(mtcars, newmpg= mpg*1.2)

#type of Tx, mean (mpg)
mtcars %>% group_by(am) %>% summarise(MeanMpg=  mean(mpg))
mtcars %>% group_by(am) %>% summarise(MeanMpg= mean(mpg),MaxHP=max(hp), MinWT= min(wt))
mtcars %>% group_by(gear,cyl,vs) %>% summarise (Meanvs= mean(vs),Meanhp= mean(hp), MaxHp= max(hp), MinHp= min(hp))
