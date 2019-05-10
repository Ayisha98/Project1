d=read.table(file.choose(),header=T,sep = ";")
png(file="plot3.png",width = 480,height = 480)
with(d,plot.default(Sub_metering_1,type='l',xaxt='n',xlab = " ",ylab = "Energy sub metering"))
with(d,lines(d$Sub_metering_2,col="red"))
with(d,lines(d$Sub_metering_3,col="blue"))
axis(1,at=seq(0,2880,by=1440),labels = c("Thr","Fri","Sat"))
legend("topright",col = c("black","red","blue"),lty=1,
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
