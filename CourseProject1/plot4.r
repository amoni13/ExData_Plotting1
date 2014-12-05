file<- suppressWarnings(fread("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE))
    data<-file[file$Date=="1/2/2007",]
      ##1440 Observations
    data<-rbind(data,file[file$Date=="2/2/2007",])
      ##2880 Observations
            dates<-paste(data$Date, data$Time, sep=" ")
            dates<-strptime(dates, format ="%d/%m/%Y %H:%M:%S")
                data<-cbind(data, dates)
##plot4.R
par(mfrow=c(2,2))
par(cex=.7)
      plot(data$dates, data$Global_active_power, type="l", xlab="", ylab="Global Active Power")
      plot(data$dates, data$Voltage, type="l", ylab="Voltage", xlab="datetime")
      plot(data$dates, data$Sub_metering_1, type= "l", xlab=" ", ylab="Engery sub metering")
            lines(data$dates, data$Sub_metering_2, type= "l", xlab=" ", ylab="Engery sub metering", col="red")
            lines(data$dates, data$Sub_metering_3, type= "l", xlab=" ", ylab="Engery sub metering", col="blue")
         legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black","red", "blue"), cex=.6, bty="n")
      plot(data$dates, data$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")