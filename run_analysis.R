rm(list=ls(all=TRUE)); gc()
setwd('/home/anatoly/do/learn_data_science/datasciencecoursera/')
library(dplyr)
library(data.table)

# task 1
activity_labels <- read.table('UCI HAR Dataset/activity_labels.txt')

x_test <- read.table('UCI HAR Dataset/test/X_test.txt')
y_test <- read.table('UCI HAR Dataset/test/y_test.txt')

x_train <- read.table('UCI HAR Dataset/train/X_train.txt')
y_train <- read.table('UCI HAR Dataset/train/y_train.txt')

features <- read.table('UCI HAR Dataset/features.txt')
data <- merge(x_test, x_train, all=TRUE)

names(data) <- features$V2 # task 4

labels <- rbind(y_test, y_train)
names(labels) <- c('activity')
data <- cbind(data, labels)

subjects_test <- read.table('UCI HAR Dataset/test/subject_test.txt')
subjects_train <- read.table('UCI HAR Dataset/train/subject_train.txt')
subjects <- rbind(subjects_test, subjects_train)
names(subjects) <- c('subject')
data <- cbind(data, subjects)

# task 3
activities <- read.table('UCI HAR Dataset/activity_labels.txt')
activities_factor  <- factor(1:6, levels = 1:6, labels = as.character(activities$V2))
data$activityname <- factor(data$activity, labels=as.character(activities$V2))

# task 2
needed_features <- grep("mean\\(\\)|std\\(\\)|activity|subject", names(data), value=TRUE)
data.meanstd <- data[,needed_features]

# task 5

task_five <- function(x){
  means <- sapply(x[1:68], mean)
  means$activityname <- x[69]$activityname[1]
  means
}

splitted <- split(data.meanstd, data.meanstd$subject)
tmp <- lapply(splitted, FUN = function(x) lapply(split(x, x$activity), FUN = task_five))
for (i in 1:length(tmp)){
  names(tmp[[i]]) <- activities$V2
}
one <- simplify2array(tmp$`1`)
two <- simplify2array(tmp$`2`)
rbind(one,two)

# !
table <- data.table(data.meanstd)
table[, 1:66 := lapply(.SD, mean), .SDcols = 1:66, by=list(subject, activity)]
data.tidy  <- table[!duplicated(table)]
# !

to_calc <- names(table)[1:66]
col <- "fBodyBodyGyroJerkMag-std()"
table[,table[[col]] := mean(table[[col]]), by=list(subject, activity)]
a  <- table[!duplicated(table)]