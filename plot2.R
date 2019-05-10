d=read.table(file.choose(),header=T,sep = ";")
png(file="plot2.png",width = 480,height = 480)
plot.default(d$Global_active_power,type = "l",xaxt='n',xlab = " ",ylab = "Global Active Power(kilowatts)")
axis(1,at=seq(0,2880,by=1440),labels = c("Thr","Fri","Sat"))
dev.off()


