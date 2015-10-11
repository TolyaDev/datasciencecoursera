data <- read.csv('household_power_consumption.txt', sep = ';', na.strings = '?')
raw_date_format <- '%d/%m/%Y'

data$Date <- as.Date(data$Date, format = raw_date_format)
needed_dates <-  c(as.Date('01/02/2007', format = raw_date_format), as.Date('02/02/2007', format = raw_date_format))
#needed_dates <- c('01/02/2007', '02/02/2007')
#data$Date <- as.character(data$Date)

data <- data[is.element(data$Date, needed_dates),]

data$DateTime  <- strptime(paste(data$Date, data$Time), format = '%Y-%m-%d %H:%M:%S')
data <- subset(data, select=c(-Date, -Time))

write.csv(file = 'data.csv', x = data)

closeAllConnections()
rm(list=ls())
gc()
