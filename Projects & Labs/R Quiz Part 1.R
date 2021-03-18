View(longley)
help(longley)
summary(longley)
Q6LinearModel <- lm(Employed ~ GNP, data=longley)
coef(Q6LinearModel)
summary(Q6LinearModel)
#Questions 6, 7, and 8 use
#the same linear model
Q9LinearModel <- lm(Armed.Forces ~ Population, data=longley)
coef(Q9LinearModel)
summary(Q9LinearModel)
Q10LinearModel <- lm(Employed ~ Population, data=longley)
coef(Q10LinearModel)
summary(Q10LinearModel)
Q11LinearModel <- lm(GNP ~ Population, data=longley)
summary(Q11LinearModel)

