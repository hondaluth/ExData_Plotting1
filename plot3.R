##------------------------------------ START ---------------------------------------------

## reading in file
setwd("C:/Users/Sam/Documents/R Studio School/04 Exploratory Data Analysis/Assignment 1")
dataFile <- "exdata_data_household_power_consumption/household_power_consumption.txt"
d1 <- read.table(dataFile, header = T, sep = ";", stringsAsFactors = F, dec = ".")
list.files()
d2 <- d1[d1$Date %in% c("1/2/2007", "2/2/2007"), ]

## subsetting data
date_time <- strptime(paste(d2$Date, d2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(d2$Global_active_power)
sub1 <- as.numeric(d2$Sub_metering_1)
sub2 <- as.numeric(d2$Sub_metering_2)
sub3 <- as.numeric(d2$Sub_metering_3)

##plotting
png("plot3.png", width=480, height=480)
plot(date_time, sub1, type="l", ylab="Energy Submetering", xlab="")
lines(date_time, sub2, type="l", col="red")
lines(date_time, sub3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()

##------------------------------------ END -----------------------------------------------