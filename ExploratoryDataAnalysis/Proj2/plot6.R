NEI <- readRDS("summarySCC_PM25.rds")

SCC <- readRDS("Source_Classification_Code.rds")

selectedData <- subset(NEI, NEI$fips == "24510" | NEI$fips == "06037")

sources <-  subset(SCC, grepl("mobile", EI.Sector, ignore.case=TRUE), select=c(SCC, EI.Sector))

filteredData <- subset(selectedData, selectedData$SCC %in% sources$SCC)

filteredData$year <- factor(filteredData$year)

ggplot(data=filteredData, aes(x=year, y=Emissions, fill=fips)) + geom_bar(stat="identity", position=position_dodge()) + xlab("Year") + ylab("Total Emissions") + ggtitle("Emissions of Mobile Vehicle Source By Year")

dev.copy(png, file = "plot6.png")

dev.off()
