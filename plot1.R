## Set data file path and name
dataFile <- "./household_power_consumption.txt"
## Read the data file
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
## Subset the data only for the dates of interest
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Convert the data to numeric value
globalActivePower <- as.numeric(subSetData$Global_active_power)
## Define png area
png("plot1.png", width=480, height=480)
## Plot histogram
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
