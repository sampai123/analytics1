#data structure in slides

#control+enter when you are in the line to execute
#
#vectors-----
x=1:10  #create sequence of nos from 1 to 10
x
x1<- 1:20
x1

(x1=1:30)
(x2=c(1,2,3,4,5))
class (x2)

(x3=letters[1:10])
class (x3)
LETTERS[1:26]
LETTERS[seq(1,26,2)]
(x3b=c('a', "Samarth", "4"))
class(x3b)
(x4=c(T,FALSE,TRUE,T,F))
class(x4)

X5=c(3L,5L)
x5a= c(3,5)
class(x5a)
(x5b = c(1, 'a', T, 4L))
class(x5b)

#access elements
(x6= seq(0,100,by=3))
ls () #variables in my environment
x6
length(x6)
x6[20]
x6[3] #access 3rd element
#[1] 4
x6[c(2,4)] #access 2nd and 4th element
x6[seq (1, length(x6),2)]
x6 [-1]
x6 [-c(1:10, 15:20)]
x6 [c(2,-4)] #cannot mix positive and negative integers
#error in x6[c(2,-4)] : only 0 may be mixed with negative subscripts
x6[c(2,4,3.54)]#real numbers are trunacted to integers
x6[-c(1,5,20)]
x6
length(x6)
x6 [-(length(x6)-1)]
(x7=c(x6,x2))

#sort,order
(x6=sample (1:20))
sort(x6[-c(1,2)])
sort(x6, decreasing=T)
rev(x6)

(x=1:10)
x<5
x[x<4|x>6]
x
x[x==100]
x
x=x[1:4];x




#matrix
100:111
(m1=matrix(100:111, nrow=4))
(m2=matrix(100:111, ncol=3, byrow=T))
x=101:124
length(x)
matrix(x, ncol=6)
class(m1)
attributes(m1)
dim(m1)
m1

#access elements of matrix
m1
m1[1,]#1st row
m1[,3]#3rd column

paste("C","D", sep="-")
paste ('C', 1:3, sep='')
(colnames (m1) = paste ('C', 1:3, sep=''))
m1

#row and column wise summary
colSums(m1)
rowSums(m1)
colMeans(m1)
rowMeans(m1)

t(m1)#transpose
m1
sweep(m1, MARGIN=1, STATS=c(2,3,4,5), FUN="+") #rowise
sweep(m1, MARGIN=2, STATS=c(2,3,4), FUN="*") #colwise
m1
?addmargins
addmargins(m1,margin=1,sum) #rowise function
colSums(m1)
addmargins(m1,1,sd) #colwise function

addmargins (m1, 2, mean) #rowise function
addmargins(m1,c(1,2),list(list(mean,sum,max),list(var,sd)))
#row and column wise function