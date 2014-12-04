file<- suppress.Warngings(fread("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE))
    data<-file[file$Date=="1/2/2007",]
      ##1440 Observations
    data<-rbind(data,file[file$Date=="2/2/2007",])
      ##2880 Observations
            dates<-paste(data$Date, data$Time, sep=" ")
            dates<-strptime(dates, format ="%d/%m/%Y %H:%M:%S")
                data<-cbind(data, dates)

##plot2.R
par(cex=.75)
plot(data$dates, data$Global_active_power, type="l", xlab=" ", ylab="Global Active Power (kilowatts)")
