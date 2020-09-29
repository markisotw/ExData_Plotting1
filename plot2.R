setwd("C:\\Users\\user\\Desktop\\Coursera\\ExData_Plotting1")


dt<-read.table("household_power_consumption.txt",na.strings = "?",sep=";",header = TRUE)
day<-subset(dt,Date %in% c("1/2/2007","2/2/2007"))
day$Date = as.Date(day$Date,format="%d/%m/%Y")


#2
daya$Datetime<-paste(daya$Date,daya$Time)
daya$Datetime<-strptime(daya$Datetime,format = "%Y-%m-%d %H:%M:%S")
daya$Datetime<-as.POSIXct(daya$Datetime)
with(daya,plot(Datetime,Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab = ""))
dev.copy(png,file="plot2.png",width=480,height=480)
dev.off()