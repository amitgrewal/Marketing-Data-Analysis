#must import "ExponentialData" dataset
LogYModel <- lm(log(Y) ~ X, data = ExponentialData)
summary(LogYModel)
#must import "CustomerSatisfaction" dataset
LogYModel2 <- lm(log(Score) ~ MinutesOnHold, data = CustomerSatisfaction)
coef(LogYModel2)
exp(coef(LogYModel2))
#the "exp()" command above just does "e" to an
#exponent, which is the b0 and b1 values in this case
plot(log(Score) ~ MinutesOnHold, data = CustomerSatisfaction)
#do not use "plot(LogYModel2)" instead of the command
#above, as it will not result in the same output

#all commands above relate to exponential models
#the next set of commands relate to logarithmic models

LogXModel <- lm(Score ~ log(MinutesOnHold), data = CustomerSatisfaction)
coef(LogXModel)
#must import "LogData" dataset
LogXModel2 <- lm(Y ~ log(X), data = LogData)
coef(LogXModel2)
plot(Score ~ log(MinutesOnHold), data = CustomerSatisfaction)

#the commands above relate to logarithmic models
#the next set of commands relate to power law models

#must import "GDPandElectricity" dataset
plot(Electricity ~ Income, data = GDPandElectricity)
plot(log(Electricity) ~ log(Income), data = GDPandElectricity)
LogXLogYModel <- lm(log(Electricity) ~ log(Income), data = GDPandElectricity)
summary(LogXLogYModel)
#must import "PriceDemand" dataset
plot(Demand ~ Price, data = PriceDemand)
LinearModel <- lm(Demand ~ Price, data = PriceDemand)
plot(Demand ~ Price, data = PriceDemand)
abline(coef(LinearModel), col="red", lwd=2)
plot(log(Demand) ~ log(Price), data = PriceDemand)
LogLogModel <- lm(log(Demand) ~ log(Price), data = PriceDemand)
abline(coef(LogLogModel), col="red", lwd=2)
summary(LogLogModel)










