NEI <- readRDS("summarySCC_PM25.rds")

SCC <- readRDS("Source_Classification_Code.rds")

filteredData <- subset(NEI, NEI$fips == "24510")

data <- tapply(filteredData$Emissions, filteredData$year, sum)

plot(data, main = "Baltimore Total PM2.5 Emission By Year", pch = 20, type = "h", xlab = "Year", ylab = "Emission", lab = c(4, 4, 7), xaxt = 'n', lwd = 5, col = "blue")

axis(1, 1:4, labels=c("1999", "2002", "2005", "2008"))

dev.copy(png, file = "plot2.png")

dev.off()