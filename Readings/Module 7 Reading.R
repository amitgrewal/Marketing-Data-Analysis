#must import "ICECREAM" dataset
#must import "HOUSEDATA" dataset

Mod7Q2Model <- lm(mpg ~ wt*cyl + disp, data=mtcars)
Mod7Q3Model <- lm(mpg ~ wt*hp, data=mtcars)
summary(Mod7Q3Model)
Mod7Q4Model <- lm(PRICE ~ LOCATION*SIZE, data=HOUSEDATA)
Mod7Q5Model <- lm(PRICE ~ SIZE*as.factor(AGENCY), data=HOUSEDATA)

Model <- lm(Sales ~ Discount*Temperature, data=ICECREAM)
summary(Model)


employment_model <- lm(Employed ~ GNP + Unemployed + Armed.Forces + Population, data=longley)
summary(employment_model)
predict(employment_model)
residuals(employment_model)

plot(longley$Employed ~ predict(employment_model))
abline(0, 1, col="red")
plot(longley$Employed ~ predict(employment_model), xlab="Predicted number of employed", ylab="Observed number of employed")
abline(0, 1, col="red")

plot(residuals(employment_model) ~ predict(employment_model), xlab="Predicted number of employed", ylab="Prediction Error")
abline(0, 0, col="turquoise")

MyNewData <- data.frame(
  GNP=c(560), 
  Unemployed = c(410), 
  Armed.Forces = c(283),
  Population = c(150) )
predict(employment_model, newdata=MyNewData)
predict(employment_model, newdata=MyNewData, interval="prediction", level=0.95)


Model1 <- lm(PRICE ~ SIZE + TAX + as.factor(AGENCY) + LOCATION + SPEC.FEATS + TRAIN.DIST, data=HOUSEDATA)
ThisNewHouse <- data.frame(
  SIZE = c(2300) , 
  TAX = c(1200) , 
  AGENCY = c("2"), 
  LOCATION = c("South"), 
  SPEC.FEATS = c(6) , 
  TRAIN.DIST = c(1.6) )
predict(Model1, newdata=ThisNewHouse, interval="prediction", level=0.95)

Mod7Q23House <- data.frame(
  SIZE = c(3000) , 
  TAX = c(1600) , 
  AGENCY = c("4"), 
  LOCATION = c("North"), 
  SPEC.FEATS = c(8) , 
  TRAIN.DIST = c(4.5) )
predict(Model1, newdata=Mod7Q23House, interval="prediction", level=0.95)

Model2 <- lm(PRICE ~ SIZE + TAX + SPEC.FEATS + AGE + LOCATION + LOT*SIZE + TRAIN.DIST, data=HOUSEDATA)
Mod7Q24House <- data.frame(
  SIZE = c(1500) , 
  TAX = c(750) , 
  SPEC.FEATS = c(2), 
  AGE = c(30), 
  LOCATION = c("South"), 
  LOT = c("Non-corner lot"), 
  TRAIN.DIST = c(3.0) )
predict(Model2, newdata=Mod7Q24House, interval="prediction", level=0.95)




