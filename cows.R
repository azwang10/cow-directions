
 setwd("~/Desktop")
 
 raw_data <- read.csv(file="Results.csv", header=TRUE, sep=",")
 
 raw_angles = raw_data [,4]
 
 length = dim(raw_data)[1]
 
 for (i in 1:length) {
     if (raw_angles[i] < 0) {
         raw_angles[i] = raw_angles[i] + 180
     }
 }



hist(raw_angles, main="Cow Directions", xlab="Directions", breaks=50, xaxt='n')

axis(side=1, at=seq(0, 180, 20))