x <- read.csv("seservation_r_csv.csv")
y <- read_excel("reservation_r_excel.xlsx")
install.packages("readxl")
library("readxl")
library(readxl)
x <- read.csv("reservation_r_csv.csv")
y <- read_excel("reservation_r_excel.xlsx")
head(y)
head(x)
library(help=datasets)
head(women)
dim(women)
head(sleep)
summary(sleep)
View(sleep)
object.size(sleep)
dim(sleep)
is.na() # 빈칸이 있으면 TRUE 라고 뜬다. 빈칸을 평균값으로 채워준다.

x <- c(1,2,3,4,5,6,7,8,NA,10)
x

is.na(x)
is.null(x)
is.numeric(x)   
is.character(x)
is.logical(x)
is.factor(x)
is.data.frame(x)

# rbind()   행(row)으로 붙인다. 추가도 가능하다.
# cbind()   열(column)으로 붙인다. 추가도 가능하다.
# split()   
# subset()  
# substr()  
# merge()   내용을 합쳐 준다.
# sort()    순서를 정렬 기본으로는 오름차순이지만 decreasing = TRUE 를 넣어 줌으로써 반대 차순으로 할 수 있다.
# order()   순위를 내 주는 것과 같이 표현된다. 
# unique()  고유한 값 하나만 나온다.
# rm()      remove 삭제 이다. rm(list=ls()) 변수를 제거하는 형식으로 많이 사용 된다.
# tapply()  
# mapply()  
# aggregate()

x <- c(1,2,3,4,5)
y <- c(6,7,8,9,10)

rbind(x,y)
cbind(x,y)

df <- data.frame(name=c("a","b"), score = c(80,60))
df
cbind(df,rank=c(1,2))


split(iris,iris$Species) # 종 별로 잘라 내서 표시
subset(iris, Sepal.Length >=7) # 7 이상인 것만 표시
subset(iris, Sepal.Length >=7, select=(c("Sepal.Length","Species"))) # 7이 넘고 길이와 종 만 표시

x <- data.frame(name = c("a","b","c"), height=c(170,180,160))
y <- data.frame(name = c("c","b","d"),weight = c(50,70,60))
x
y
a = merge(x,y) # 내용을 합쳐 준다.
a

x <- c(20,10,30,50,40)
sort(x, decreasing = FALSE)
sort(x, decreasing = TRUE)
x
order(x, decreasing = FALSE)

iris[order(iris$Sepal.Length),] # 오름차순으로 정렬 한후 큰 순위를 넣어준다.

x <- c(1,2,2,3,3)
unique(x) # 고유한 값 하나만 나온다.

aggregate(Petal.Length ~ Species, iris, mean)
aggregate(cbind(Petal.Length, Sepal.Length) ~ Species, iris, mean)