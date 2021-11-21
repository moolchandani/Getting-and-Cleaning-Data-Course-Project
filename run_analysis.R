# Getting and Cleaning Data Project John Hopkins Coursera
# Author: Umesh Moolchandani

# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Load Packages and get the Data
library(data.table)
library(dplyr)
path <- getwd()
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, file.path(path, "dataFiles.zip"))
unzip(zipfile = "dataFiles.zip")

# Read supporting metadata
featureNames <- read.table("UCI HAR Dataset/features.txt")
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)

# Load train datasets
featuresTrain <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
activityTrain <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)

# Load test datasets
featuresTest <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
activityTest <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)

# Merge the training and test datasets to create one dataset
subjectDataset <- rbind(subjectTrain, subjectTest)
activityDataset <- rbind(activityTrain, activityTest)
featuresDataset <- rbind(featuresTrain, featuresTest)

# Naming the features columns
colnames(featuresDataset) <- t(featureNames[2])

# Naming appropriate column names for Activity and Subject
colnames(activityDataset) <- "Activity"
colnames(subjectDataset) <- "Subject"

# Merge the subject, activity and features data to create one dataset
fullDataset <- cbind(subjectDataset, activityDataset, featuresDataset)

# Extract only the measurements on the mean and standard deviation for each measurement
columnsWithMeanSTD <- grep(".*Mean.*|.*Std.*", names(fullDataset), ignore.case=TRUE)
requiredColumns <- c(1, 2, columnsWithMeanSTD)
dim(fullDataset)
filteredDataset <- fullDataset[,requiredColumns]
dim(filteredDataset)

# Use descriptive activity names to name the activities in the data set
filteredDataset$Activity <- as.character(filteredDataset$Activity)
for (i in 1:6){
filteredDataset$Activity[filteredDataset$Activity == i] <- as.character(activityLabels[i,2])
}

# Convert the activity and subject columns into factors
filteredDataset$Activity <- as.factor(filteredDataset$Activity)
filteredDataset$Subject <- as.factor(filteredDataset$Subject)


# Appropriately label the data set with descriptive variable names
names(filteredDataset)<-gsub("Acc", "Accelerometer", names(filteredDataset))
names(filteredDataset)<-gsub("Gyro", "Gyroscope", names(filteredDataset))
names(filteredDataset)<-gsub("BodyBody", "Body", names(filteredDataset))
names(filteredDataset)<-gsub("Mag", "Magnitude", names(filteredDataset))
names(filteredDataset)<-gsub("^t", "Time", names(filteredDataset))
names(filteredDataset)<-gsub("^f", "Frequency", names(filteredDataset))
names(filteredDataset)<-gsub("tBody", "TimeBody", names(filteredDataset))
names(filteredDataset)<-gsub("-mean()", "Mean", names(filteredDataset), ignore.case = TRUE)
names(filteredDataset)<-gsub("-std()", "STD", names(filteredDataset), ignore.case = TRUE)
names(filteredDataset)<-gsub("-freq()", "Frequency", names(filteredDataset), ignore.case = TRUE)
names(filteredDataset)<-gsub("angle", "Angle", names(filteredDataset))
names(filteredDataset)<-gsub("gravity", "Gravity", names(filteredDataset))

# From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
filteredDataset <- data.table(filteredDataset)
tidyDataset <- aggregate(. ~Subject + Activity, filteredDataset, mean)
tidyDataset <- tidyDataset[order(tidyDataset$Subject,tidyDataset$Activity),]
write.table(tidyDataset, file = "tidyDataset.txt", row.names = FALSE)
