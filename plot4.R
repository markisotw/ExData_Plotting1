setwd("C:\\Users\\user\\Desktop\\Coursera\\ExData_Plotting1")


dt<-read.table("household_power_consumption.txt",na.strings = "?",sep=";",header = TRUE)
day<-subset(dt,Date %in% c("1/2/2007","2/2/2007"))
day$Date = as.Date(day$Date,format="%d/%m/%Y")

daya$Datetime<-paste(daya$Date,daya$Time)
daya$Datetime<-strptime(daya$Datetime,format = "%Y-%m-%d %H:%M:%S")
daya$Datetime<-as.POSIXct(daya$Datetime)

#4
par(mfcol=c(2,2),mar=c(4,4,2,2))
#first
with(daya,plot(Datetime,Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab = ""))
#second
with(daya,plot(Datetime,Sub_metering_1,type="l",ylab="Energy sub metering",xlab = ""))
lines(daya$Datetime,daya$Sub_metering_2,type="l",col="red")
lines(daya$Datetime,daya$Sub_metering_3,type="l",col="blue")
legend("topright",lwd=c(1,1,1),col=c("black","red","blue"),bty="n",legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
#third
with(daya,plot(Datetime,Voltage,type="l",ylab="Voltage",xlab = "Datetime"))
#forth
with(daya,plot(Datetime,Global_reactive_power,type="l",xlab = "Datetime"))
dev.copy(png,file="plot4.png",width=480,height=480)
dev.off()