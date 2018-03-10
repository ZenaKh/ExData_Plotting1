#read data
data <- read.table("D:/Study/datascientist/Cours4/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
#subset the data for 01/02/2007 and 02/02/2017
dataToPlot <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]
# absciss of datetime and ordinate
xToPlot <- strptime(paste(dataToPlot$Date, dataToPlot$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
yToplot <- as.numeric(dataToPlot$Global_active_power)
#plot a graph
plot(xToPlot, yToplot, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)" )
#save png
dev.copy(png, file = "D:/Study/datascientist/Cours4/ExData_Plotting1/plot2.png", width = 480, height = 480)
dev.off()