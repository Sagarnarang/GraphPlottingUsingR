datset<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
x <- format(as.Date(datset$Date, "%d/%m/%Y"))
datset$Date<-x
z<-as.Date("2007-02-01")
temp<-datset[as.Date(datset$Date)>=z,]
z<-as.Date("2007-02-02")
temp1<-temp[as.Date(temp$Date)<=z,]
png("plot3.png",bg = "transparent")

datetime <- strptime(paste(temp1$Date, temp1$Time), format="%F %T")
plot(datetime,temp1$Sub_metering_1,xlab="", ylab="Energy Sub metering",type="l")
lines(datetime,temp1$Sub_metering_2,type="l",col="red")
lines(datetime,temp1$Sub_metering_3,type="l",col="blue")
legend("topright",legend=c("sub_metering_1","sub_metering_2","sub_metering_3"),col=c("black","blue","red"),lty=c(1,1,1))
dev.off()