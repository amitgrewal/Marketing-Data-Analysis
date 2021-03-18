#must import "HOUSEDATA" dataset
Model1 <- lm(PRICE ~ SIZE + AGE, data=HOUSEDATA)
summary(Model1)
NewModel <- lm(PRICE ~ SIZE, data=HOUSEDATA)
summary(NewModel)
Model2 <- lm(PRICE ~ SIZE + SPEC.FEATS, data=HOUSEDATA)
summary(Model2)
SpecialFeaturesModel <- lm(PRICE ~ SPEC.FEATS, data=HOUSEDATA)
summary(SpecialFeaturesModel)
Model3 <- lm(PRICE ~ SIZE + TRAIN.DIST, data=HOUSEDATA)
summary(Model3)
Model4 <- lm(PRICE ~ SIZE + TRAIN.DIST + TAX, data=HOUSEDATA)
summary(Model4)

#the next section deals with multicollinearity
library(car)
HouseModel1 <- lm (PRICE ~ SIZE + TAX + SPEC.FEATS + AGE + TRAIN.DIST, data=HOUSEDATA)
vif(HouseModel1)
HouseModel2 <- lm (PRICE ~ SIZE + AGE + TRAIN.DIST, data=HOUSEDATA)
vif(HouseModel2)
HouseModel_HW <- lm(PRICE ~ SIZE + AGE + SPEC.FEATS + TRAIN.DIST, data=HOUSEDATA)
vif(HouseModel_HW)

#the next section deals with Variable selection and model reduction
FullModel <- lm(PRICE ~ SIZE + TAX + SPEC.FEATS + AGE + TRAIN.DIST, data=HOUSEDATA)
summary(FullModel)
IntermediateModel <- lm(PRICE ~ SIZE + SPEC.FEATS + AGE + TRAIN.DIST, data=HOUSEDATA)
summary(IntermediateModel)
IntermediateModel2 <- lm(PRICE ~ SIZE + SPEC.FEATS + TRAIN.DIST, data=HOUSEDATA)
summary(IntermediateModel2)
ReducedModel <- lm(PRICE ~ SIZE + TRAIN.DIST, data=HOUSEDATA)
summary(ReducedModel)
step(FullModel)
ReducedModel <- step(FullModel)
summary(ReducedModel)


