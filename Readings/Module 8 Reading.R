#must import "CustRating" dataset
#must import "HOUSEDATA" dataset
#must import "ICECREAM" dataset

CheckoutMethod <- c("Self", "Self", "Self", "Cashier", "Cashier", "Cashier")
CustomerSatisfactionRating <- c(3, 4, 3, 5, 3, 4)
MyData <- data.frame(CheckoutMethod, CustomerSatisfactionRating)
t.test(CustomerSatisfactionRating ~ CheckoutMethod, var.equal=TRUE, data=MyData)

#the next command is not the same as above, notice that the next command uses the "CustRating" dataset instead of the "MyData" dataset created above
t.test(Rating ~ CheckoutMethod, var.equal=TRUE, data=CustRating)

SocMedia <- c("No", "No", "No", "No", "Yes", "Yes", "Yes", "Yes")
Score <- c(79, 82, 85, 74, 82, 87, 78, 88)
MediaData <- data.frame(SocMedia, Score)
t.test(Score ~ SocMedia, var.equal=TRUE, data=MediaData)

#the next command reuses the "MyData" dataset created at the start of this file
LinearModel <- lm(CustomerSatisfactionRating ~ CheckoutMethod, data=MyData)
summary(LinearModel)

Time <- c("Nov/Dec 2018", "Nov/Dec 2018", "Nov/Dec 2018", "Nov/Dec 2019", "Nov/Dec 2019", "Nov/Dec 2019" )
Spending <- c(490, 150, 835, 545, 202, 895)
Name <- c("Arianna", "Stephen", "Danella", "Arianna", "Stephen", "Danella")
SpendingData <- data.frame(Name, Time, Spending)
View(SpendingData)
t.test(Spending ~ Time, paired=TRUE, data=SpendingData)

SpendingLinearModel <- lm(Spending ~ Time + Name, data=SpendingData)
summary(SpendingLinearModel)

View(sleep)
t.test(extra ~ group, paired=TRUE, data=sleep)

PriceAgencyLinearModel <- lm(PRICE ~ as.factor(AGENCY), data=HOUSEDATA)
PriceAgencyANOVA <- aov(PRICE ~ as.factor(AGENCY), data=HOUSEDATA)
summary(PriceAgencyLinearModel)
summary(PriceAgencyANOVA)

ANOVAExample2 <- aov(PRICE ~ as.factor(AGENCY) + LOCATION, data=HOUSEDATA)
summary(ANOVAExample2)

InteractionANOVA <- aov(PRICE ~ as.factor(AGENCY)*LOCATION, data=HOUSEDATA)
summary(InteractionANOVA)

Mod8Q30ANOVA <- aov(count ~ spray, data=InsectSprays)
summary(Mod8Q30ANOVA)

Mod8Q32ANOVA <- aov(PRICE ~ as.factor(AGENCY)*LOT, data=HOUSEDATA)
summary(Mod8Q32ANOVA)

ICECREAM$DiscountStatus <- ifelse(ICECREAM$Discount > 0, "Discount", "No discount")
IceCreamANOVA <- aov(Sales ~ Temperature*DiscountStatus, data=ICECREAM)
summary(IceCreamANOVA)









