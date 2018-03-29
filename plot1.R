##1
power <- read.csv("~/R Practice Files/household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors = FALSE)
powers<-subset(power,Date=="1/2/2007"|Date=="2/2/2007")
hist(as.numeric(powers$Global_active_power),col="red",xlab="Global Active Power (kilowats)",main="Global Active Power")
dev.copy(png,'plot1.png',height=480,width=480)
dev.off()