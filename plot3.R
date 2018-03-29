##3 
power <- read.csv("~/R Practice Files/household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors = FALSE)
powers<-subset(power,Date=="1/2/2007"|Date=="2/2/2007")
powers<-mutate(powers,Sub_metering_1=as.numeric(Sub_metering_1))
powers<-mutate(powers,Sub_metering_2=as.numeric(Sub_metering_2))

plot(Time,powers$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
lines(Time,powers$Sub_metering_2,col="red")
lines(Time,powers$Sub_metering_3,col="blue")
legend("topright",legend=names(powers[7:9]),lty=c(1,1),col=c("black","red","blue"),bty="n")
dev.copy(png,'plot3.png',height=480,width=480)
dev.off()