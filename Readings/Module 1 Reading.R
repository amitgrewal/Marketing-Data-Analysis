#This is a comment, remember to
#re-import the data
summary(HOUSEDATA)
View(mtcars)
help(mtcars)
summary(mtcars)
View(HOUSEDATA)
summary(mtcars)
#The above commands conclude the summary()
#function portion of the reading
with(HOUSEDATA, tapply(PRICE, LOCATION, summary))
with(HOUSEDATA, tapply(PRICE, LOCATION, mean))
with(HOUSEDATA, tapply(PRICE, LOCATION, sum))
with(HOUSEDATA, tapply(SIZE, LOCATION, summary))
with(HOUSEDATA, tapply(PRICE, SPEC.FEATS, summary))
with(HOUSEDATA, tapply(PRICE, AGENCY, summary))
with(mtcars, tapply(mpg, vs, summary))
with(mtcars, tapply(mpg, am, summary))
#the above commands conlude the tapply()
#function portion of the reading