library(ggplot2);
library(plyr);


#Read activity file
activity <- read.csv("./activity.csv");

#activity$date <- as.Date(activity$date, "%Y-%m-%d");

#Historam of number of steps

tsteps <- ddply(activity, .(date), summarize, steps=sum(steps,na.rm=TRUE));

hist(tsteps$steps,main="Histogram of total steps per day",xlab="Steps per day");

print(mean(tsteps$steps,na.rm=TRUE));

median(tsteps$steps,na.rm=TRUE);


