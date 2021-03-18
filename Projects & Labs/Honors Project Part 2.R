#enable libraries
library(geosphere)
library(maps)
library(dplyr)

##################################################
#               THIS IS THE                      #
#                 START OF                       #
#                 PLOT #1                        #
##################################################

#draw empty map
par(mar=c(0,0,0,0))
map('world',
    col="#f2f2f2", fill=TRUE, bg="white", lwd=0.05,
    mar=rep(0,4),border=0, ylim=c(-80,80) 
)

#define city longitude/latitude
Buenos_aires <- c(-58,-34)
Paris <- c(2,49)
Melbourne <- c(145,-38)
Montreal <- c(-74,46)
Saint.Petersburg <- c(30,60)
Abidjan <- c(-4,5)
Nairobi <- c(37,-1)
Salvador <- c(-39,-13)

#create dataset
data <- rbind(Buenos_aires, Paris, Melbourne, Montreal, Saint.Petersburg, Abidjan, Nairobi, Salvador) %>% 
  as.data.frame()
colnames(data) <- c("long","lat")

#plot cities and their names
points(x=data$long, y=data$lat, col="slateblue", cex=2, pch=20)
text(rownames(data), x=data$long, y=data$lat,  col="slateblue", cex=1, pos=4)

#compute all possible city connections
all_pairs <- cbind(t(combn(data$long, 2)), t(combn(data$lat, 2))) %>% as.data.frame()
colnames(all_pairs) <- c("long1","long2","lat1","lat2")

#create plotting function
plot_my_connection=function( dep_lon, dep_lat, arr_lon, arr_lat, ...){
  inter <- gcIntermediate(c(dep_lon, dep_lat), c(arr_lon, arr_lat), n=50, addStartEnd=TRUE, breakAtDateLine=F)             
  inter=data.frame(inter)
  diff_of_lon=abs(dep_lon) + abs(arr_lon)
  if(diff_of_lon > 180){
    lines(subset(inter, lon>=0), ...)
    lines(subset(inter, lon<0), ...)
  }else{
    lines(inter, ...)
  }
}

#plot all connections
for(i in 1:nrow(all_pairs)){
  plot_my_connection(all_pairs$long1[i], all_pairs$lat1[i], all_pairs$long2[i], all_pairs$lat2[i], col="skyblue", lwd=1)
}

##################################################
#               THIS IS THE                      #
#                  END OF                        #
#                 PLOT #1                        #
##################################################

##################################################
#               THIS IS THE                      #
#                 START OF                       #
#                 PLOT #2                        #
##################################################

#draw empty map
par(mar=c(0,0,0,0))
map('world',
    col="#f2f2f2", fill=TRUE, bg="white", lwd=0.05,
    mar=rep(0,4),border=0, ylim=c(-80,80) 
)

#define city longitude/latitude
Sacramento <- c(-121,39)
Toronto <- c(-79,44)
Bogota <- c(-74,5)
Santiago <- c(-71,-33)
Johannesburg <- c(28,-26)
Riyadh <- c(47,25)
Warsaw <- c(21,52)
Haast <- c(169,-44)
Seoul <- c(127,38)

#create dataset
data <- rbind(Sacramento, Toronto, Bogota, Santiago, Johannesburg, Riyadh, Warsaw, Haast, Seoul) %>% 
  as.data.frame()
colnames(data) <- c("long","lat")

#plot cities and their names
points(x=data$long, y=data$lat, col="firebrick1", cex=2, pch=20)
text(rownames(data), x=data$long, y=data$lat,  col="firebrick1", cex=1, pos=4)

#compute all possible city connections
all_pairs <- cbind(t(combn(data$long, 2)), t(combn(data$lat, 2))) %>% as.data.frame()
colnames(all_pairs) <- c("long1","long2","lat1","lat2")

#create plotting function
plot_my_connection=function( dep_lon, dep_lat, arr_lon, arr_lat, ...){
  inter <- gcIntermediate(c(dep_lon, dep_lat), c(arr_lon, arr_lat), n=50, addStartEnd=TRUE, breakAtDateLine=F)             
  inter=data.frame(inter)
  diff_of_lon=abs(dep_lon) + abs(arr_lon)
  if(diff_of_lon > 180){
    lines(subset(inter, lon>=0), ...)
    lines(subset(inter, lon<0), ...)
  }else{
    lines(inter, ...)
  }
}

#plot all connections
for(i in 1:nrow(all_pairs)){
  plot_my_connection(all_pairs$long1[i], all_pairs$lat1[i], all_pairs$long2[i], all_pairs$lat2[i], col="forestgreen", lwd=1)
}

##################################################
#               THIS IS THE                      #
#                  END OF                        #
#                 PLOT #2                        #
##################################################

