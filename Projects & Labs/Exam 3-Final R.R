#Q10
YES10 <- c(400)
TOTAL10 <- c(1800)
prop.test(YES10,TOTAL10)

#Q11
YES11 <- c(190,210)
TOTAL11 <- c(990,1210)
prop.test(YES11,TOTAL11)

#Q12-14
LinearModel <- lm(qsec ~ disp + hp + cyl, data=mtcars)
summary(LinearModel)




















