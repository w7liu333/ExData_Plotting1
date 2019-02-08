source("load_data.R")

png("plot3.png", width=480, height=480)

plot(data.withtimestamp$timestamp, data.withtimestamp$Sub_metering_1, type = "l", 
     xlab= " ", ylab = "Energy sub meeting")
lines(data.withtimestamp$timestamp, data.withtimestamp$Sub_metering_2, 
      col = "red")
lines(data.withtimestamp$timestamp, data.withtimestamp$Sub_metering_3, 
      col = "blue")
legend("topright", col=c("black","red","blue"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)

dev.off() 




