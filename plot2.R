source("load_data.R")

png("plot2.png", width=480, height=480)

plot(data.withtimestamp$timestamp, data.withtimestamp$Global_active_power, type="l",
     xlab = " ", ylab = "Global Active Power (kilowatts)")

dev.off() 




