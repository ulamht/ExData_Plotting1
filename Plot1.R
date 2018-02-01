# Read data
power <- read.table("C:\\Users\\tuuye\\Downloads\\household_power_consumption.txt", stringsAsFactors=FALSE, header=TRUE, sep=";")
subset <- subset(power, Date %in% c("1/2/2007", "2/2/2007"))
subset$Date <- as.Date(subset$Date, format="%d/%m/%y")
png("plot1", width=480, height=480)
hist(as.numeric(as.character(subset$Global_active_power)), main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red")

