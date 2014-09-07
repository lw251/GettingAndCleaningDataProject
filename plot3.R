hpc <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?", stringsAsFactors=FALSE)

filteredData <- hpc[min(which(hpc$Date=="1/2/2007")):max(which(hpc$Date=="2/2/2007")),]

filteredData$TimeStamp <- as.POSIXct(paste(filteredData$Date, filteredData$Time), format = "%d/%m/%Y %T")

plot(filteredData$TimeStamp, filteredData$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")

lines(filteredData$TimeStamp, filteredData$Sub_metering_2, type = "l", col = "red")

lines(filteredData$TimeStamp, filteredData$Sub_metering_3, type = "l", col = "blue")

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2, col = c("black", "red", "blue"))

dev.copy(png, file = "plot3.png")

dev.off()