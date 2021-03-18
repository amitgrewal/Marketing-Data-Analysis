#must import MYDATA for commands below
MyFirstLinearModel <- lm(REVENUE ~ COST, data=MYDATA)
coef(MyFirstLinearModel)
View(mtcars)
MySecondModel <- lm(mpg ~ hp, data=mtcars)
coef(MySecondModel)
#must import HOUSEDATA for commands below
Mod2Q10LinearModel <- lm(PRICE ~ SPEC.FEATS, data=HOUSEDATA)
coef(Mod2Q10LinearModel)
Mod2Q11LinearModel <- lm(PRICE ~ TAX, data=HOUSEDATA)
coef(Mod2Q11LinearModel)
Mod2Q12LinearModel <- lm(PRICE ~ TRAIN.DIST, data=HOUSEDATA)
coef(Mod2Q12LinearModel)
#below is stuff from the Module 2, Part 2: "R-squared" reading
summary(MyFirstLinearModel)
ModelPriceVsSize <- lm(PRICE ~ SIZE, data=HOUSEDATA)
summary(ModelPriceVsSize)
summary(MySecondModel)
#below is stuff from Module 2, Part 2: "quick-check..."
Mod2Q21LinearModel <- lm(mpg ~ cyl, data=mtcars)
coef(Mod2Q21LinearModel)
  #The same linear model from Question 10
  #is used for Question 22
Mod2Q22LinearModel = Mod2Q10LinearModel
summary(Mod2Q22LinearModel)
#below is stuff from Module 2, Part 3: "Reading the..."
#must import CustomerSatisfaction dataset
summary(MyFirstLinearModel)
Mod2Q24LinearModel <- lm(Score ~ MinutesOnHold, data=CustomerSatisfaction)
coef(Mod2Q24LinearModel)
summary(Mod2Q24LinearModel)
Mod2Q27LinearModel = Mod2Q24LinearModel
summary(Mod2Q27LinearModel)
Mod2Q28LinearModel = MyFirstLinearModel
summary(Mod2Q28LinearModel)

