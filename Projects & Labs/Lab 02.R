#Must import "marketingdata_subset" dataset
Mod2Q6LabLinearModel <- lm(TotalNumPurchases ~ Income, data=marketingdata_subset)
coef(Mod2Q6LabLinearModel)
summary(Mod2Q6LabLinearModel)
#Questions 6, 7, and 8 all use
#the same linear model above
Mod2Q9LabLinearModel <- lm(MntFruits ~ Teenhome, data=marketingdata_subset)
summary(Mod2Q9LabLinearModel)
