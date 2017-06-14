## Set data file path and name
dataFile <- "./household_power_consumption.txt"
## Read the data file
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
## Subset the data only for the dates of interest
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Convert the data time to make it useful
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
## Convert the data to numeric value
globalActivePower <- as.numeric(subSetData$Global_active_power)
## Define png area
png("plot2.png", width=480, height=480)
## Ploting the graph
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
