##Plot1
dev.off()
household_power_consumption <- read.csv("~/R default/exdata_data_household_power_consumption/household_power_consumption.txt", header=FALSE, sep=";", na.strings="?")
data<- subset(household_power_consumption, household_power_consumption$V1 == c("1/2/2007", "2/2/2007"))
histdata<- data$V3
histdatac<-as.character(histdata)
histdatan<-as.numeric(histdatac)
hist(histdatan, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts")
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()
