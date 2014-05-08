datset<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
x <- format(as.Date(datset$Date, "%d/%m/%Y"))
datset$Date<-x
z<-as.Date("2007-02-01")
temp<-datset[as.Date(datset$Date)>=z,]
z<-as.Date("2007-02-02")
temp1<-temp[as.Date(temp$Date)<=z,]
png("plot1.png",bg = "transparent")
hist(temp1$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
dev.off()