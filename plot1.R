setwd("C:\\Users\\user\\Desktop\\Coursera\\ExData_Plotting1")


dt<-read.table("household_power_consumption.txt",na.strings = "?",sep=";",header = TRUE)
daya<-subset(dt,Date %in% c("1/2/2007","2/2/2007"))
daya$Date = as.Date(daya$Date,format="%d/%m/%Y")

#1
hist(daya$Global_active_power,col="red",main="Global Active Power",xlab = "Global Active Power (kilowatts)",ylab="Frequency")
dev.copy(png,file="plot1.png",width=480,height=480)
dev.off()