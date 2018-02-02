power <- read.table("C:\\Users\\tuuye\\Downloads\\household_power_consumption.txt", stringsAsFactors=FALSE, header=TRUE, sep=";")
FullTimeDate <- strptime(paste(power$Date, power$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
power <- cbind(power, FullTimeDate)

power$Date <- as.Date(power$Date, format="%d/%m/%Y")
power$Time <- format(power$Time, format="%H:%M:%S")

subsetdata <- subset(power, Date == "2007-02-01" | Date =="2007-02-02")

png("plot2.png", width=480, height=480)
with(subsetdata, plot(FullTimeDate, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()
