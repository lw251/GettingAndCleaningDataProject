hpc <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?", stringsAsFactors=FALSE)

filteredData <- hpc[min(which(hpc$Date=="1/2/2007")):max(which(hpc$Date=="2/2/2007")),]

filteredData$TimeStamp <- as.POSIXct(paste(filteredData$Date, filteredData$Time), format = "%d/%m/%Y %T")

hist(filteredData$Global_active_power, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.copy(png, file = "plot1.png")

dev.off()