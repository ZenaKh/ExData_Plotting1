#read data
data <- read.table("D:/Study/datascientist/Cours4/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
#subset the data for 01/02/2007 and 02/02/2017
dataToPlot <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]
#plot a histogramm
hist(dataToPlot$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")
dev.copy(png, file = "D:/Study/datascientist/Cours4/ExData_Plotting1/plot1.png", width = 480, height = 480)
dev.off()