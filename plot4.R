##4
power <- read.csv("~/R Practice Files/household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors = FALSE)
powers<-subset(power,Date=="1/2/2007"|Date=="2/2/2007")
par(mfrow=c(2,2))
plot(Time,as.numeric(powers$Global_active_power),type="l",ylab="Global Active Power")
plot(Time,powers$Voltage,ylab="Voltage",type="l")
plot(Time,powers$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
{
    lines(Time,powers$Sub_metering_2,col="red")
    lines(Time,powers$Sub_metering_3,col="blue")
    legend("topright",legend=names(powers[7:9]),lty=c(1,1),col=c("black","red","blue"),bty="n")
}
plot(Time,powers$Global_reactive_power,type="l",ylab="Global Reactive Power")
dev.copy(png,'plot4.png',height=480,width=480)
dev.off()



