# Coursera 11.2015
#Plot4.R

#clears memory
rm(list=ls())

power<-read.csv("household_power_consumption.csv", header=TRUE)
head(power)

#subset data between dates
powerdata <- power[power$Date %in% c("1/2/2007","2/2/2007") ,]


#plot4
datetime <- strptime(paste(powerdata$Date, powerdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
active_power <- as.numeric(powerdata$Global_active_power)
reactive_power <- as.numeric(powerdata$Global_reactive_power)
voltage <- as.numeric(powerdata$Voltage)
subMetering1 <- as.numeric(powerdata$Sub_metering_1)
subMetering2 <- as.numeric(powerdata$Sub_metering_2)
subMetering3 <- as.numeric(powerdata$Sub_metering_3)
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2))
plot(datetime, active_power, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
plot(datetime, reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
