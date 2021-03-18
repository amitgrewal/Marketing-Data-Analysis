      #the next section (lines 2-19) is practice
View(mtcars)
library(corrplot)
#in the command below "dataset" is the name of the dataset that is being created
dataset <- subset(mtcars, select = c(mpg, wt, hp, disp, cyl))
corrplot(cor(dataset))
corrplot(cor(dataset), tl.col = "purple")
corrplot(cor(dataset), tl.col = "black")
corrplot(cor(dataset), tl.col = "black", type = "upper")
#next set of commands use a different dataset
dataset2 <- subset(mtcars, select = c(mpg, wt, qsec, drat))
corrplot(cor(dataset2), tl.col = "black")
#next set of commands use a different dataset
dataset3 <- subset(mtcars, select = c(mpg, qsec, drat, wt))
corrplot(cor(dataset3), tl.col = "black")
#next set of commands use "dataset4" which is the same as "dataset3"
dataset4 <- subset(mtcars, select = c(mpg, qsec, drat, wt))
dataset5 <- na.omit(dataset4)
corrplot(cor(dataset5), tl.col = "black")

      #the next section (lines 22-XX) is the project
#must import "bikes" dataset (not bikes_KaggleData) (either use Import Dataset, or commands in lines 23-25)
    library(readxl)
    bikes <- read_excel("C:/Users/Amit/OneDrive - Michigan State University/MKT 317/MKT 317 Data/bikes.xlsx")
    View(bikes)

bikes2 <- subset(bikes, select=c(total, registered, casual, tempF, humidity, windspeed, year, workingday01, holiday01))
corrplot(cor(bikes2), tl.col="darkgreen", type="upper")



