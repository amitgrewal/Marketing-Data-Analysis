#must import "DiamondSales" dataset
#must import "SuperstoreExtract4" dataset
#must import "MarketingCampaign" dataset

ReviewPowerModel <- lm(log(price) ~ log(carat), data=DiamondSales)
summary(ReviewPowerModel)
CaratCutPriceModel <- lm(log(price) ~ log(carat) + cut, data=DiamondSales)
summary(CaratCutPriceModel)

Model <- lm(log(Sales) ~ log(UnitPrice), data=SuperstoreExtract4)
summary(Model)
SegmentModel <- lm(log(Sales) ~ log(UnitPrice) + Segment, data=SuperstoreExtract4)
summary(SegmentModel)
RegionModel <- lm(log(Sales) ~ log(UnitPrice) + Region, data=SuperstoreExtract4)
summary(RegionModel)

Model1 <- lm(Revenue ~ Time + Store, data=MarketingCampaign)
summary(Model1)
Rural_Data <- subset(MarketingCampaign, Location=="Rural")
Suburban_Data <- subset(MarketingCampaign, Location=="Suburban")
Urban_Data <- subset(MarketingCampaign, Location=="Urban")
RuralModel <- lm(Revenue ~ Time + Store, data=Rural_Data)
summary(RuralModel)
SuburbanModel <- lm(Revenue ~ Time + Store, data=Suburban_Data)
summary(SuburbanModel)
UrbanModel <- lm(Revenue ~ Time + Store, data=Urban_Data)
summary(UrbanModel)

ID <- rep(1:6, 2)
Time <- rep(c("before", "after"), each=6)
X <- c(7, 9, 1, 5, 3, 3, 9, 11, 2, 6, 4, 5)
Y <- c(7, 6, 10.2, 7.8, 8.9, 9, 9.1, 7.9, 12.3, 9.7, 10.6, 11.3)
ExampleData <- data.frame(ID, Time, X, Y)
View(ExampleData)
ExampleModel <- lm(Y ~ X + as.factor(ID), data=ExampleData)
summary(ExampleModel)




