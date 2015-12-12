rm(list = ls())
data_1 <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data_2 <- data_1[data_1$Date %in% c("1/2/2007","2/2/2007") ,]
time_axis <- strptime(paste(data_2$Date, data_2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(time_axis, as.numeric(data_2$Global_active_power), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()