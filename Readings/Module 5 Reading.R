#must import "HOUSEDATA" dataset

Model1a <- lm(PRICE ~ SIZE + as.factor(LOT), data=HOUSEDATA)
    summary(Model1a)
Model1b <- lm(PRICE ~ SIZE + LOT, data=HOUSEDATA)
    summary(Model1b)
IncorrectModel1 <- lm(PRICE ~ as.factor(SIZE) + LOT, data=HOUSEDATA)
    summary(IncorrectModel1)
Model2 <- lm(PRICE ~ SIZE + as.factor(AGENCY), data=HOUSEDATA)
    summary(Model2)
Model3a <- lm(PRICE ~ SIZE + as.factor(AGENCY) + LOT + TRAIN.DIST + LOCATION, data=HOUSEDATA)
    summary(Model3a)
Model3b <- lm(PRICE ~ SIZE + as.factor(AGENCY) + LOT + TRAIN.DIST + as.factor(LOCATION), data=HOUSEDATA)
    summary(Model3b)
Model3c <- lm(PRICE ~ SIZE + as.factor(AGENCY) + as.factor(LOT) + TRAIN.DIST + as.factor(LOCATION), data=HOUSEDATA)
    summary(Model3c)
Model <- lm(PRICE ~ SIZE + as.factor(AGENCY), data=HOUSEDATA)
summary(Model)

HOUSEDATA$AGENCY1 <- ifelse(HOUSEDATA$AGENCY=="1", 1, 0)
HOUSEDATA$AGENCY2 <- ifelse(HOUSEDATA$AGENCY=="2", 1, 0)
HOUSEDATA$AGENCY3 <- ifelse(HOUSEDATA$AGENCY=="3", 1, 0)
HOUSEDATA$AGENCY4 <- ifelse(HOUSEDATA$AGENCY=="4", 1, 0)
#the following model is related to/equal to the model named "Model" on line 17. The following model requires the compiling of the previous 4 commands (lines 20-23)
GoodModelMethod2 <- lm(PRICE ~ SIZE + AGENCY2 + AGENCY3 + AGENCY4, data=HOUSEDATA)
#the following model uses Agency 2 as the reference level (as opposed to Agency 1)
DifferentGoodModel <- lm(PRICE ~ SIZE + AGENCY1 + AGENCY3 + AGENCY4, data=HOUSEDATA)
summary(DifferentGoodModel)
#the following model (ModelQ21) uses Agency 1 as the reference level again
ModelQ21 <- lm(PRICE ~ SIZE + TRAIN.DIST + AGENCY2 + AGENCY3 + AGENCY4, data=HOUSEDATA)
summary(ModelQ21)
NewModel <- lm(PRICE ~ SIZE + TRAIN.DIST + LOCATION, data=HOUSEDATA)
summary(NewModel)
LOCATION_Model <- lm(PRICE ~ LOCATION, data=HOUSEDATA)
summary(LOCATION_Model)



