hpc <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?", stringsAsFactors=FALSE)

filteredData <- hpc[min(which(hpc$Date=="1/2/2007")):max(which(hpc$Date=="2/2/2007")),]

filteredData$TimeStamp <- as.POSIXct(paste(filteredData$Date, filteredData$Time), format = "%d/%m/%Y %T")

par(mfrow = c(2, 2))

plot(filteredData$TimeStamp, filteredData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

plot(filteredData$TimeStamp, filteredData$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(filteredData$TimeStamp, filteredData$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")

lines(filteredData$TimeStamp, filteredData$Sub_metering_2, type = "l", col = "red")

lines(filteredData$TimeStamp, filteredData$Sub_metering_3, type = "l", col = "blue")

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2, col = c("black", "red", "blue"), bty = "n")

plot(filteredData$TimeStamp, filteredData$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.copy(png, file = "plot4.png")

dev.off()