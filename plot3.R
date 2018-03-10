#read data
data <- read.table("D:/Study/datascientist/Cours4/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
#subset the data for 01/02/2007 and 02/02/2017
dataToPlot <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]
# absciss of datetime and ordinate
xToPlot <- strptime(paste(dataToPlot$Date, dataToPlot$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
yToplot1 <- as.numeric(dataToPlot$Sub_metering_1)
yToplot2 <- as.numeric(dataToPlot$Sub_metering_2)
yToplot3 <- as.numeric(dataToPlot$Sub_metering_3)

#open png
png("D:/Study/datascientist/Cours4/ExData_Plotting1/plot3.png", width = 480, height = 480)

#plot a graph
plot(xToPlot, yToplot1, type = "l", xlab = "", ylab = "Energy submettering" )
lines(xToPlot, yToplot2, type = "l", col = "red" )
lines(xToPlot, yToplot3, type = "l", col = "blue" )
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))

dev.off()