# set working directory and load file
setwd("/Users/Wei-Ting/Desktop/R course/Course 4")
rawdata <- read.table(file = "household_power_consumption.txt", 
           skip=grep("31/1/2007", readLines("household_power_consumption.txt")), 
           nrows=5000, header=F,sep=";")

colnames(rawdata) <- c("Date", "Time", "Global_active_power", 
                    "Global_reactive_power", "Voltage", "Global_intensity", 
                    "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
head(rawdata)
tail(rawdata)

rawdata$Date <- as.Date(rawdata$Date, format="%d/%m/%Y")

data <- subset(rawdata, Date == "2007-2-1" | Date == "2007-2-2")                                                               
data.withtimestamp <- transform(data, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
