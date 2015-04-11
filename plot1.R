datacomp<-read.csv("C:/Users/C16Summer.Getty/Documents/math378/Exploratory-Data-Project-1/exploratorydata/household_power_consumption.txt", header=TRUE, sep=';', na.strings="?", nrows=2075259, check.names=FALSE, stringsAsFactors=FALSE, comment.char="", quote='\"')

datacomp$Date<-as.Date(datacomp$Date, format="%d/%m/%Y")

data<-subset(datacomp,subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(datacomp)

datetime<-paste(as.Date(data$Date),data$Time)
data$Datetime<-as.POSIXct(datetime)

hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
