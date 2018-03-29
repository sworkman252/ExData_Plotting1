##2
power <- read.csv("~/R Practice Files/household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors = FALSE)
powers<-subset(power,Date=="1/2/2007"|Date=="2/2/2007")
Time<-strptime(paste(powers$Date,powers$Time,sep=" "), "%d/%m/%Y %H:%M:%S")
plot(Time,as.numeric(powers$Global_active_power),type="l")
dev.copy(png,'plot2.png',height=480,width=480)
dev.off()