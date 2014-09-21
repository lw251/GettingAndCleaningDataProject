NEI <- readRDS("summarySCC_PM25.rds")

SCC <- readRDS("Source_Classification_Code.rds")

baltimore <- subset(NEI, NEI$fips == "24510")

sources <-  subset(SCC, grepl("mobile", EI.Sector, ignore.case=TRUE), select=c(SCC, EI.Sector))

filteredData <- subset(baltimore, baltimore$SCC %in% sources$SCC)

filteredData$year <- factor(filteredData$year)

ggplot(data=filteredData, aes(x=year, y=Emissions)) + geom_bar(stat="identity") + xlab("Year") + ylab("Total Emissions") + ggtitle("Emissions of Mobile Vehicle Source in Baltimore By Year")

dev.copy(png, file = "plot5.png")

dev.off()