data <- read.csv('data.csv')
Sys.setlocale("LC_TIME", "C")
data$DateTime <-strptime(data$DateTime, format = '%Y-%m-%d %H:%M:%S')

x <- data$DateTime
y <- data$Global_active_power

png(filename = 'plot2.png',width = 480, height = 480)

frame()
plot(x,y,type='n', xlab = '', ylab = 'Global Active Power (kilowatts)')
lines(x, y)

dev.off()