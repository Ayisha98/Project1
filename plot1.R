d=read.table(file.choose(),header=T,sep = ";")
png(file="plot1.png",width = 480,height = 480)
hist(d$Global_active_power,main="Global Active Power",col="red",xlab = "Global Active Power(kilowatts)")
dev.off()
