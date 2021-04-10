#must import "bikes" dataset
#must enable "corrplot" package
#must enable "ggplot2" package
#must enable "car" package

#R code for correlation plot
BikesSubset <- subset(bikes, select=c(total, registered, casual, tempF, humidity, windspeed, year, workingday01, holiday01))
corrplot(cor(BikesSubset), tl.col="darkgreen", type="upper")

#R code for One Independent Variable Plot
ggplot(data=bikes) +
  geom_point(mapping=aes(x=tempF, y=total, color="deepskyblue")) +
  geom_smooth(mapping=aes(x=tempF, y=total, color="red"), method="lm", se=FALSE) +
  labs(main="tempF vs. total", y="Total Daily Bike Renters",x="Temperature in °F") +
  theme(legend.position="none")

##############################################
#Testing different models for the One Independent Variable Plot
#None of the models are good, but linear is the best
#ignore the "Q1" in the model names

Q1LinearModel <-  lm(total ~ tempF, data=bikes)
plot(total ~ tempF, data=bikes, main="Linear")
abline(coef(Q1LinearModel), col = "red", lwd =2)
summary(Q1LinearModel)

#the next 3 lines refer to the Q1 exponential model
Q1ExponentialModel <-  lm(log(total) ~ tempF, data=bikes)
plot(log(total) ~ tempF, data=bikes, main="Exponential")
abline(coef(Q1ExponentialModel), col = "red", lwd =2)

#the next 3 lines refer to the Q1 logarithmic model
Q1LogarithmicModel <-  lm(total ~ log(tempF), data = bikes)
plot(total ~ log(tempF), data = bikes, main="Logarithmic")
abline(coef(Q1LogarithmicModel), col = "red", lwd =2)

#the next 3 lines refer to the Q1 power law model
Q1PowerLawModel <-  lm(log(total) ~ log(tempF), data = bikes)
plot(log(total) ~ log(tempF), data = bikes, main="Power Law")
abline(coef(Q1PowerLawModel), col = "red", lwd =2)

LinearResidual <- resid(Q1LinearModel)
plot(LinearResidual, main="Linear Residuals")
abline(0,0, col="red", lwd=2)

ExponentialResidual <- resid(Q1ExponentialModel)
plot(ExponentialResidual, main="Exponential Residuals")
abline(0,0, col="red", lwd=2)

LogaritmicResidual <- resid(Q1LogarithmicModel)
plot(LogaritmicResidual, main="Logarithmic Residuals")
abline(0,0, col="red", lwd=2)

PowerLawResidual <- resid(Q1PowerLawModel)
plot(PowerLawResidual, main="Power Law Residuals")
abline(0,0, col="red", lwd=2)
##############################################

#Two Independent Variables #1
ggplot(data=bikes) +
  geom_point(mapping=aes(x=tempF, y=total, color=season)) + 
  geom_smooth(mapping=aes(x=tempF, y=total, color=season), method="lm", se=FALSE) +
  labs(y="Total Daily Bike Renters",x="Temperature in °F")

TwoIndepVarModel1 <- lm(total ~ tempF + season, data=bikes)
summary(TwoIndepVarModel1)

#Two Independent Variables #2
ggplot(data=bikes) +
  geom_point(mapping=aes(x=windspeed, y=total, color=season)) + 
  geom_smooth(mapping=aes(x=windspeed, y=total, color=season), method="lm", se=FALSE) +
  scale_y_continuous(name="Total Daily Bike Renters") +
  scale_x_continuous(name="Windspeed in MPH")

TwoIndepVarModel2 <- lm(total ~ windspeed + season, data=bikes)
summary(TwoIndepVarModel2)

#Many Independent Variables
#this is justcreating a full model with all the independent variables and then reducing it
FullModel <- lm(total ~ season + as.factor(year) + month + holiday + day + weathersituation + tempF + humidity + windspeed, data=bikes)
summary(FullModel)
vif(FullModel)

R2Model <- lm(total ~ season + as.factor(year) + holiday + day + weathersituation + tempF + humidity + windspeed, data=bikes)
vif(R2Model)

R3Model <- lm(total ~ as.factor(year) + holiday + weathersituation + tempF + humidity + windspeed, data=bikes)
vif(R3Model)
summary(R3Model)






