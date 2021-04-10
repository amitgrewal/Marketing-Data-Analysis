#must import "SOSS65" dataset

#Lab9Q2
YES <- c(403)
TOTAL <- c(1010)
prop.test(YES,TOTAL)

#Lab9Q4
YES4 <- c(275, 128)
TOTAL4 <- c(578, 432)
prop.test(YES4,TOTAL4)

ThirtyAndOlder <- subset(SOSS65, Age > 29)

#Lab9Q8
Model8 <- glm(OwnDogDummy ~ Age, data=ThirtyAndOlder, family=binomial)
summary(Model8)



