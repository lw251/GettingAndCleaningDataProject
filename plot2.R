hpc <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?", stringsAsFactors=FALSE)

filteredData <- hpc[min(which(hpc$Date=="1/2/2007")):max(which(hpc$Date=="2/2/2007")),]

filteredData$TimeStamp <- as.POSIXct(paste(filteredData$Date, filteredData$Time), format = "%d/%m/%Y %T")

plot(filteredData$TimeStamp, filteredData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.copy(png, file = "plot2.png")

dev.off()