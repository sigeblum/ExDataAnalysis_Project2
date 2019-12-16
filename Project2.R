## This first line will likely take a few seconds. Be patient!
NEI <- readRDS("./exdata_data_NEI_data/summarySCC_PM25.rds")
SCC <- readRDS("./exdata_data_NEI_data/Source_Classification_Code.rds")

library(dplyr)
q1 <- group_by(NEI, year)
t <- aggregate(q1$Emissions, by= list(Year= q1$year), FUN=sum )

plot(t$Year, t$x)
