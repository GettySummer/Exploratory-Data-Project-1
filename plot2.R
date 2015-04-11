datacomp<-read.csv("C:/Users/C16Summer.Getty/Documents/math378/Exploratory-Data-Project-1/exploratorydata/household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                   nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
datacomp$Date<-as.Date(datacomp$Date, format="%d/%m/%Y")

subset=(datacomp$Date >= "2007-02-01" & datacomp$Date <= "2007-02-02")
rm(datacomp)

datetime<-paste(as.Date(data$Date),data$Time)
data$Datetime<-as.POSIXct(datetime)

plot(data$Global_active_power~data$Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="")

dev.copy(png, file="plot2.png", height=480, width=480)
plot(data$Global_active_power~data$Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="")

dev.off()
