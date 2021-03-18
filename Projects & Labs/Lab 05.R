#must import "HOUSEDATA" dataset
HOUSEDATA$NORTH <- ifelse(HOUSEDATA$LOCATION=="North", 1, 0)
HOUSEDATA$SOUTH <- ifelse(HOUSEDATA$LOCATION=="South", 1, 0)
      #the following commands relate to plot #1
Lab5Part1Q3Model <- lm(PRICE ~ as.factor(LOCATION), data=HOUSEDATA)
summary(Lab5Part1Q3Model)
      #the following commands relate to plot #2
Lab5Part1Q7Model <- lm(PRICE ~ SIZE + SOUTH, data=HOUSEDATA)
summary(Lab5Part1Q7Model)
      #the following commands relate to plot #3
Lab5Part1Q9Model <- lm(PRICE ~ as.factor(LOT), data=HOUSEDATA)
summary(Lab5Part1Q9Model)

      #the following commands relate to plots #4,5,6
      #the next two commands create datasets from a subset of the "HOUSEDATA" dataset
SmallMediumHouses <- subset(HOUSEDATA, SIZE <= 2500)
LargeHouses <- subset(HOUSEDATA, SIZE > 2500)

SmallMediumModel <- lm(PRICE ~ SIZE + LOT, data=SmallMediumHouses)
summary(SmallMediumModel)
LargeModel <- lm(PRICE ~ SIZE + LOT, data=LargeHouses)
summary(LargeModel)



