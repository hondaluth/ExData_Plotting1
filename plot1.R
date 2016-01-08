##------------------------------------ START ---------------------------------------------

## reading in file
setwd("C:/Users/Sam/Documents/R Studio School/04 Exploratory Data Analysis/Assignment 1")
dataFile <- "exdata_data_household_power_consumption/household_power_consumption.txt"
d1 <- read.table(dataFile, header = T, sep = ";", stringsAsFactors = F, dec = ".")
list.files()
d2 <- d1[d1$Date %in% c("1/2/2007", "2/2/2007"), ]

## str(d2) ## checking structure of d2

d2_global_act_pwr <- as.numeric(d2$Global_active_power)
png("plot1.png", width=480, height=480)
hist(d2_global_act_pwr, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

##------------------------------------ END -----------------------------------------------