file<- suppressWarnings(fread("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE))
    data<-file[file$Date=="1/2/2007",]
      ##1440 Observations
    data<-rbind(data,file[file$Date=="2/2/2007",])
      ##2880 Observations

##plot1.R
    data$Global_active_power<-as.numeric(data$Global_active_power)
par(cex=.75)
hist(data$Global_active_power, main= "Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
