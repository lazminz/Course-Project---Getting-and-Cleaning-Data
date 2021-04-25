library(dplyr)

#Download data
new_wd <- "C:/Users/lazmi/Documents/R/Course Project - Getting and Cleaning Data/"
setwd(new_wd)
URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(URL, "run_analysis_data.zip")
unzip("run_analysis_data.zip")

#Import data
new_wd <- "C:/Users/lazmi/Documents/R/Course Project - Getting and Cleaning Data/UCI HAR Dataset/"
setwd(new_wd)

activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")
subject_test <- read.table("test/subject_test.txt")
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_train <- read.table("train/subject_train.txt")
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")

#Assign column names
names(activity_labels)<-c("class", "activity")
names(features)<- c("feature number", "feature")
names(subject_test)<- c("subject")
names(x_test)<- c(features$feature)
names(y_test)<- c("label")
names(subject_train)<- c("subject")
names(x_train)<- c(features$feature)
names(y_train)<- c("label")

#1.	Merges the training and the test sets to create one data set.
sub <- rbind(subject_train, subject_test)
x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)
all_data <- cbind(sub, x, y)

#2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
features_mean_sd <-features$feature[grep("mean\\(\\)|std\\(\\)", features$feature)]
features_mean_sd <- c("subject", "label", features_mean_sd)
final_data <- subset(all_data,select=features_mean_sd)

#3.	Uses descriptive activity names to name the activities in the data set
final_data$label <- activity_labels[final_data$label, 2]

#4.	Appropriately labels the data set with descriptive variable names.
names(final_data)<-gsub("^t", "time", names(final_data))
names(final_data)<-gsub("^f", "frequency", names(final_data))
names(final_data)<-gsub("-mean()", "mean", names(final_data))
names(final_data)<-gsub("-std()", "sd", names(final_data))
names(final_data)<-gsub("-freq()", "frequency", names(final_data))
names(final_data)<-gsub("Acc", "accelerometer", names(final_data))
names(final_data)<-gsub("Gyro", "gyroscope", names(final_data))
names(final_data)<-gsub("BodyBody", "body", names(final_data))
names(final_data)<-gsub("Mag", "magnitude", names(final_data))
names(final_data)<-gsub("tBody", "time body", names(final_data))

#5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
final_output <- aggregate(. ~ final_data$subject + final_data$label , final_data[-2], mean)
drop_col <- "subject"
final_output <- final_output[,!names(final_output)%in%drop_col]
write.table(final_output, file = "final_output.txt", row.name=FALSE)


