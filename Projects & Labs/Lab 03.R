#must import "SuperstoreExtract4"  dataset
  #the following section refers to question #1
  #the next 3 lines refer to the Q1 linear model
    Q1LinearModel <-  lm(Sales ~ UnitPrice, data = SuperstoreExtract4)
    plot(Sales ~ UnitPrice, data = SuperstoreExtract4)
    abline(coef(Q1LinearModel), col = "red", lwd =2)
  #the next 3 lines refer to the Q1 exponential model
    Q1ExponentialModel <-  lm(log(Sales) ~ UnitPrice, data = SuperstoreExtract4)
    plot(log(Sales) ~ UnitPrice, data = SuperstoreExtract4)
    abline(coef(Q1ExponentialModel), col = "red", lwd =2)
  #the next 3 lines refer to the Q1 logarithmic model
    Q1LogarithmicModel <-  lm(Sales ~ log(UnitPrice), data = SuperstoreExtract4)
    plot(Sales ~ log(UnitPrice), data = SuperstoreExtract4)
    abline(coef(Q1LogarithmicModel), col = "red", lwd =2)
  #the next 3 lines refer to the Q1 power law model
    Q1PowerLawModel <-  lm(log(Sales) ~ log(UnitPrice), data = SuperstoreExtract4)
    plot(log(Sales) ~ log(UnitPrice), data = SuperstoreExtract4)
    abline(coef(Q1PowerLawModel), col = "red", lwd =2)

  #there are no R commands for question #2
  #the following section refers to question #3
    coef(Q1PowerLawModel)
    summary(Q1PowerLawModel)



