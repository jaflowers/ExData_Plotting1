# Coursera 11.2015
#Plot1.R

#clears memory
rm(list=ls())

power<-read.csv("household_power_consumption.csv", header=TRUE)
head(power)

#subset data between dates
powerdata <- power[power$Date %in% c("1/2/2007","2/2/2007") ,]

#Plot1
active_power<-as.numeric(powerdata$Global_active_power)
png("plot1.png",width=480,height=480)

hist(active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
