source("load_data.R")

png("plot4.png", width=480, height=480)
par(mfcol=c(2,2))

# plot1
plot(data.withtimestamp$timestamp, data.withtimestamp$Global_active_power, type="l",
     xlab = " ", ylab = "Global Active Power")

# plot2
plot(data.withtimestamp$timestamp, data.withtimestamp$Sub_metering_1, type = "l", 
     xlab= " ", ylab = "Energy sub meeting")
lines(data.withtimestamp$timestamp, data.withtimestamp$Sub_metering_2, 
      col = "red")
lines(data.withtimestamp$timestamp, data.withtimestamp$Sub_metering_3, 
      col = "blue")
legend("topright", col=c("black","red","blue"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, 
       box.lwd=0)

# plot3
plot(data.withtimestamp$timestamp, data.withtimestamp$Voltage, type = "l", 
     xlab= "datetime", ylab = "Voltage")

# plot4
plot(data.withtimestamp$timestamp, data.withtimestamp$Global_reactive_power, type = "l", 
     xlab= "datetime", ylab = "Global_reactive_power")

dev.off() 