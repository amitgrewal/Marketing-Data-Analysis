#must import "PredictChurn" dataset
#must import "CellPhoneRenewal" dataset

YES <- c(301)
TOTAL <- c(500)
prop.test(YES, TOTAL)
prop.test(301, 500) #this is basically the same thing as lines 4-6

#Mod9Q1
prop.test(900, 3000)

YES2 <- c(245, 56)
TOTAL2 <- c(341, 159)
prop.test(YES2, TOTAL2)

#Mod9Q2-3
YES3 <- c(680, 1020)
TOTAL3 <- c(2000, 3500)
prop.test(YES3, TOTAL3)

Model <- glm(renewdummy ~ years + segment, data=CellPhoneRenewal, family=binomial)
summary(Model)
#the following two lines (lines 24-25) just change the dummy variable of segment from the default of Segment B to Segment A instead
Model2 <- glm(renewdummy ~ years + SegmentAdummy, data=CellPhoneRenewal, family=binomial)
summary(Model2)

#Mod9Q13
ModelQ13 <- glm(ChurnDummy ~ Location + Segment + Years, data=PredictChurn, family=binomial)
summary(ModelQ13)





