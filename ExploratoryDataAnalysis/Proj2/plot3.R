NEI <- readRDS("summarySCC_PM25.rds")

SCC <- readRDS("Source_Classification_Code.rds")

filteredData <- subset(NEI, NEI$fips == "24510")

filteredData$year <- factor(filteredData$year)

ggplot(data=filteredData, aes(x=year, y=Emissions)) + geom_bar(stat="identity") + facet_wrap(~ type) + xlab("Year") + ylab("Total Emissions") + ggtitle("Baltimore Annual Emissions By Types")

dev.copy(png, file = "plot3.png")

dev.off()

