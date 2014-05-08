datset<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
x <- format(as.Date(datset$Date, "%d/%m/%Y"))
datset$Date<-x
z<-as.Date("2007-02-01")
temp<-datset[as.Date(datset$Date)>=z,]
z<-as.Date("2007-02-02")
temp1<-temp[as.Date(temp$Date)<=z,]
png("plot2.png",bg = "transparent")

datetime <- strptime(paste(temp1$Date, temp1$Time), format="%F %T")
plot(datetime,temp1$Global_active_power,type="l",xlab="", ylab="Global Active Power (kilowatts)")
dev.off()