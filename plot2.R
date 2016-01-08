##------------------------------------ START ---------------------------------------------

## reading in file
setwd("C:/Users/Sam/Documents/R Studio School/04 Exploratory Data Analysis/Assignment 1")
dataFile <- "exdata_data_household_power_consumption/household_power_consumption.txt"
d1 <- read.table(dataFile, header = T, sep = ";", stringsAsFactors = F, dec = ".")
list.files()
d2 <- d1[d1$Date %in% c("1/2/2007", "2/2/2007"), ]

## str(d2) ## checking structure of d2

d2_datetime <- strptime(paste(d2$Date, d2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
## str(d2_datetime) ## checking 
d2_global_act_pwr2 <- as.numeric(d2$Global_active_power)
## str(d2_global_act_pwr2)
png("plot2.png", width = 480, height = 480)
plot(d2_datetime, d2_global_act_pwr2, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

##------------------------------------ END -----------------------------------------------