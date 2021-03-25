#must import "AB_Test" dataset
#must import "FreeCoffee" dataset
#must import "FreeCoffeeLong" dataset

#Lab8Q2-3
t.test(Clicks ~ WebVersion, var.equal=TRUE, data=AB_Test)

#Lab8Q4-5
YES <- c(50, 60)
TOTAL <- c(200, 200)
prop.test(YES, TOTAL)

#Lab8Q6-7
YES <- c(375, 540)
TOTAL <- c(1500, 1800)
prop.test(YES, TOTAL)

#Lab8Q9-10
t.test(Score ~ Timepoint, paired=TRUE, data=FreeCoffeeLong)

###################################################
#Questions 11-14 are in the Tableau file for Lab 08
###################################################

#Lab8Q15-16
Q15ANOVA <- aov(Change ~ Location, data=FreeCoffee)
summary(Q15ANOVA)

#Lab8Q17-18
Q17ANOVA <- aov(Change ~ FrequentShopper, data=FreeCoffee)
summary(Q17ANOVA)


