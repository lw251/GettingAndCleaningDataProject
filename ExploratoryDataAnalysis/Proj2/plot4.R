NEI <- readRDS("summarySCC_PM25.rds")

SCC <- readRDS("Source_Classification_Code.rds")

sources <-  subset(SCC, grepl("coal", EI.Sector, ignore.case=TRUE), select=c(SCC, EI.Sector))

filteredData <- subset(NEI, NEI$SCC %in% sources$SCC)

filteredData$year <- factor(filteredData$year)

ggplot(data=filteredData, aes(x=year, y=Emissions)) + geom_bar(stat="identity") + xlab("Year") + ylab("Total Emissions") + ggtitle("US Coal Combustion-Related Emissions By Year")

dev.copy(png, file = "plot4.png")

dev.off()