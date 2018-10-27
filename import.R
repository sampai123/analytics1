#import and export files
#reading from a flat file into a vector
list.files('./data2')
data=scan("./data2/hhe.txt", what="character")
head(data)
?iris
#goto folder data and see iris.csv
write.csv(iris,"./data/iris.csv", row.names=F)
read1= read.csv (file="./data/iris.csv", header=TRUE, sep=",")
str(read1);class(read1)

#csv file from web
read_web1= read.csv('http://www.stats.ox.ac.uk/pub/datasets/csb/ch11b.dat')
head(read_web1)
read_web1

#import from gsheet
library(gsheet)
url_gsheet="https://s3.amazonaws.com/assets.datacamp.com/blog_assets/test.txt"
df_gsheet= as.data.frame(gsheet2tbl(url_gsheet))

#Import from Excel
# read in the first worksheet from the workbook myexcel.xlsx
# first row contains variable names
library(xlsx)
library(rJava)
sys.setenv(JAVA_HOME='C:\\Program Files\\Java\\jre1.8.0_181')
df_excel1 = read.xlsx("./data2/myexcel.xlsx", 1)
df_excel1
# read in the worksheet named mysheet
df_excel2a = read.xlsx("./data2/myexcel.xlsx", sheetName = "bowlers")
df_excel2a
df_excel2b = read.xlsx("./data2/myexcel.xlsx", sheetIndex = 2)
df_excel2b
