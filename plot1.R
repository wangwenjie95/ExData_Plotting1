PC<-read.table("C://Users//admin//Desktop//Consumption.txt",sep=";",header=TRUE)
PC_2007<-PC[PC$Date=="2/2/2007"|PC$Date=="1/2/2007",]
attach(PC_2007)
x<- as.numeric(Global_active_power)
png("plot1.png", width=480, height=480)
hist(x, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()