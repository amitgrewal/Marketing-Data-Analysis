#must import "HOUSEDATA" dataset
Q1Model <- lm(PRICE ~ SIZE + TRAIN.DIST, data=HOUSEDATA)
  summary(Q1Model)
  #the Q1Model is used for questions 1-3
Q4Model <- lm (PRICE ~ TRAIN.DIST, data=HOUSEDATA)
  summary(Q4Model)
  #the Q4Model is used for questions 4-6
Q7Model <- lm (PRICE ~ TAX, data=HOUSEDATA)
  summary(Q7Model)
  #the Q7Model is used for questions 7-8
Q9Model <- lm (PRICE ~ SIZE + TAX, data=HOUSEDATA)
  summary(Q9Model)
  #the Q9Model is used for questions 9-10
Q11Model <- lm (PRICE ~ SIZE + AGE, data=HOUSEDATA)
  summary(Q11Model)
  #the Q11Model is used for questions 11-12
Q13Model <- lm (PRICE ~ SIZE + SPEC.FEATS, data=HOUSEDATA)
  summary(Q13Model)
  #the Q13Model is used for questions 13-14
Q15Model <- lm (PRICE ~ SPEC.FEATS, data=HOUSEDATA)
  summary(Q15Model)
  #the Q15Model is used for questions 15-16
Q17Model <- lm (PRICE ~ SIZE + AGE + SPEC.FEATS + TRAIN.DIST, data=HOUSEDATA)
  summary(Q17Model)
  #the Q17Model is used for question 17 only

#the "longley" dataset is built into RStudio
View(longley)
help(longley)
library(corrplot)
rvalues <- cor(longley)
corrplot(rvalues)

#spacing added for clarity
FullModel <- lm(Employed ~ ., data=longley)
summary(FullModel)
library(car)
vif(FullModel)
step(FullModel)
ReducedModel <- step(FullModel)
summary(ReducedModel)



