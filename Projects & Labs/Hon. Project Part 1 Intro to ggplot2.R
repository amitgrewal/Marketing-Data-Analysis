#this goes with the "Introduction
#to ggplot2" word document

#must import "HOUSEDATA" dataset
library(ggplot2)
library(rmarkdown)
library(scales)

# Plot 1 (this is basically an empty plot)
ggplot(data=HOUSEDATA)
# Plot 2
ggplot(data=HOUSEDATA) +
  geom_point(mapping=aes(x=SIZE, y=PRICE))
# Plot 3
ggplot(data=HOUSEDATA) +
  geom_point(mapping=aes(x=SIZE, y=PRICE), color="darkorchid3")
# Plot 4
ggplot(data=HOUSEDATA) +
  geom_point(mapping=aes(x=SIZE, y=PRICE), color="deepskyblue")
# Plot 5
ggplot(data=HOUSEDATA) +
  geom_point(mapping=aes(x=SIZE, y=PRICE, color=LOCATION))
# Plot 6
ggplot(data=HOUSEDATA) +
  geom_point(mapping=aes(x=SIZE, y=PRICE, color=LOCATION)) +
scale_color_manual(values=c("purple", "green"))
# Plot 7
ggplot(data=HOUSEDATA) +
  geom_point(mapping=aes(x=SIZE, y=PRICE, color=LOT)) +
  scale_color_manual(values=c("red", "deepskyblue"))
# Plot 8
ggplot(data=HOUSEDATA) +
  geom_point(mapping=aes(x=SIZE, y=PRICE)) +
  geom_smooth(mapping=aes(x=SIZE, y=PRICE), method="lm", se=FALSE)
# Plot 9
ggplot(data=HOUSEDATA) +
  geom_smooth(mapping=aes(x=SIZE, y=PRICE), method="lm", se=FALSE)
# Plot 10
  # The question for Plot 10 asks which of these
  # four plots is correct/matches the answer

  # Plot 10-A
    # this plot doesn't work, missing
    # a second parentheses after "color=LOT)"
ggplot(data=HOUSEDATA) +
  geom_point(mapping=aes(x=SIZE, y=PRICE), color=LOT) + 
  geom_smooth(mapping=aes(x=SIZE, y=PRICE), method="lm", se=FALSE)
  # Plot 10-B
ggplot(data=HOUSEDATA) +
  geom_point(mapping=aes(x=SIZE, y=PRICE, color=LOT)) + 
  geom_smooth(mapping=aes(x=SIZE, y=PRICE), method="lm", se=FALSE)
  # Plot 10-C
ggplot(data=HOUSEDATA) +
  geom_point(mapping=aes(x=SIZE, y=PRICE)) + 
  geom_smooth(mapping=aes(x=SIZE, y=PRICE, color=LOT), method="lm", se=FALSE)
  # Plot 10-D
ggplot(data=HOUSEDATA) +
  geom_point(mapping=aes(x=SIZE, y=PRICE, color=LOT)) + 
  geom_smooth(mapping=aes(x=SIZE, y=PRICE, color=LOT), method="lm", se=FALSE)
# Plot 11
ggplot(data=HOUSEDATA) +
  geom_point(mapping=aes(x=SIZE, y=PRICE, color=AGENCY)) + 
  geom_smooth(mapping=aes(x=SIZE, y=PRICE, color=AGENCY), method="lm", se=FALSE)
# Plot 12
ggplot(data=HOUSEDATA) +
  geom_point(mapping=aes(x=SIZE, y=PRICE, color=as.factor(AGENCY))) + 
  geom_smooth(mapping=aes(x=SIZE, y=PRICE, color=as.factor(AGENCY)), method="lm", se=FALSE)
# Plot 13
ggplot(data=HOUSEDATA) +
  geom_point(mapping=aes(x=SIZE, y=PRICE, color=as.factor(AGENCY))) + 
  geom_smooth(mapping=aes(x=SIZE, y=PRICE, color=as.factor(AGENCY)), method="lm", se=FALSE) + 
  theme_bw()
# Plot 14
ggplot(data=HOUSEDATA) +
  geom_point(mapping=aes(x=SIZE, y=PRICE, color=as.factor(AGENCY))) + 
  geom_smooth(mapping=aes(x=SIZE, y=PRICE, color=as.factor(AGENCY)), method="lm", se=FALSE) + 
  labs(x="size in square feet", y="selling price (thousand dollars)") + 
  theme_bw()
# Plot 15
ggplot(data=HOUSEDATA) +
  geom_point(mapping=aes(x=SIZE, y=PRICE, color=as.factor(AGENCY))) + 
  geom_smooth(mapping=aes(x=SIZE, y=PRICE, color=as.factor(AGENCY)), method="lm", se=FALSE) + 
  labs(x="size in square feet", y="selling price (thousand dollars)", color="Selling Agency") + 
  theme_bw()
# Plot 16
ggplot(data=HOUSEDATA) +
  geom_point(mapping=aes(x=SIZE, y=PRICE, color=as.factor(AGENCY))) + 
  geom_smooth(mapping=aes(x=SIZE, y=PRICE, color=as.factor(AGENCY)), method="lm", se=FALSE) + 
  labs(x="size in square feet", y="selling price (thousand dollars)", color="Selling Agency") + 
  scale_y_continuous(labels= label_dollar()) +
  theme_bw()
# Plot 17
ggplot(data=HOUSEDATA) +
  geom_point(mapping=aes(x=SIZE, y=PRICE, color=as.factor(AGENCY))) + 
  geom_smooth(mapping=aes(x=SIZE, y=PRICE, color=as.factor(AGENCY)), method="lm", se=FALSE) + 
  labs(x="Size (square feet)", y="Selling Price", color="Selling Agency") +
  scale_y_continuous(labels= label_dollar(prefix = "$", suffix = "K"))+
  theme_bw()
# Plot 18
ggplot(data=HOUSEDATA) +
  geom_point(mapping=aes(x=SIZE, y=PRICE*1000, color=as.factor(AGENCY))) + 
  geom_smooth(mapping=aes(x=SIZE, y=PRICE*1000, color=as.factor(AGENCY)), method="lm", se=FALSE) + 
  labs(x="Size (square feet)", y="Selling Price", color="Selling Agency") + 
  scale_y_continuous(labels=scales::dollar_format()) + 
  theme_bw()










