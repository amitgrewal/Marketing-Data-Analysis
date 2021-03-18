#must import "DiamondSales" dataset
#must import "Gapminder_ChildMortlity_1950_2020

Mod6Q2Model <- lm(log(price) ~ log(carat) + color, data = DiamondSales)
summary(Mod6Q2Model)

Model <- lm(log(price) ~ log(carat) + cut + color + clarity, data=DiamondSales)
summary(Model)

Question9to13_Model <- lm(log(Child.mortality) ~ Year + name, data=Gapminder_ChildMortlity_1950_2020)
summary(Question9to13_Model)

library(plm)
MyPanelModel <- plm(log(Child.mortality) ~ Year, data=Gapminder_ChildMortlity_1950_2020, index=c("name"))
summary(MyPanelModel)





