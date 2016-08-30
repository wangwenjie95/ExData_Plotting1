PC<-read.table("C://Users//admin//Desktop//Consumption.txt",sep=";",header=TRUE)
PC_2007<-PC[PC$Date=="2/2/2007"|PC$Date=="1/2/2007",]
attach(PC_2007)
datetime <- strptime(paste(Date, Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
x<- as.numeric(Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, x, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()