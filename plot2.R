##Plot2
dev.off()
household_power_consumption <- read.csv("~/R default/exdata_data_household_power_consumption/household_power_consumption.txt", header=FALSE, sep=";", na.strings="?")
data<- subset(household_power_consumption, household_power_consumption$V1 == c("1/2/2007", "2/2/2007"))

datetime<-paste(data$V1, " ", data$V2)
date<-strptime(datetime, format = "%d/%m/%Y %H:%M:%S")

plot(date, as.numeric(as.character(data$V3)),type = ("l"), xlab = " ", ylab = "Global Active Power (kilowatts)")

dev.copy(png, file = "plot2.png", height = 480, width = 480)
dev.off()