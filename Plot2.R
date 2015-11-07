# Coursera 11.2015
#Plot2.R

#clears memory
rm(list=ls())

power<-read.csv("household_power_consumption.csv", header=TRUE)
head(power)

#subset data between dates
powerdata <- power[power$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(powerdata$Date, powerdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
active_power <- as.numeric(powerdata$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
