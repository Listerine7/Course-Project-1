##Plot4
dev.off()
household_power_consumption <- read.csv("~/R default/exdata_data_household_power_consumption/household_power_consumption.txt", header=FALSE, sep=";", na.strings="?")
data<- subset(household_power_consumption, household_power_consumption$V1 == c("1/2/2007", "2/2/2007"))

datetime<-paste(data$V1, " ", data$V2)
date<-strptime(datetime, format = "%d/%m/%Y %H:%M:%S")

par(mfrow = c(2,2))
plot(date, as.numeric(as.character(data$V3)),type = ("l"), xlab = " ", ylab = "Global Active Power (kilowatts)")
plot(date, as.numeric(as.character(data$V5)), type = "l", xlab = " ", ylab = "Voltage")
plot(date, as.numeric(as.character(data$V7)), xlab = " ", ylab= "Energy sub metering", type = "l", lwd = 1)
lines(date, as.numeric(as.character(data$V8)), col = "red")
lines(date, as.numeric(as.character(data$V9)), col = "blue")
legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(date, as.numeric(as.character(data$V4)), type = "l", xlab = " ", ylab = "Global Reactive Power")


dev.copy(png, file = "plot4.png", height = 480, width = 480)
dev.off()