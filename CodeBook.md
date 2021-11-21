# Getting and Cleaning Data Course Project

This code book summarizes the resulting data fields in tidyDataset.txt.

# Identifiers

_**subject**_ - The ID of the test subject.

_**activity**_ - The type of activity performed when the corresponding measurements were taken.

# Measurements

•	TimeBodyAccelerometerMean()-X

•	TimeBodyAccelerometerMean()-Y

•	TimeBodyAccelerometerMean()-Z

•	TimeBodyAccelerometerSTD()-X

•	TimeBodyAccelerometerSTD()-Y 

•	TimeBodyAccelerometerSTD()-Z

•	TimeGravityAccelerometerMean()-X 

•	TimeGravityAccelerometerMean()-Y 

•	TimeGravityAccelerometerMean()-Z 

•	TimeGravityAccelerometerSTD()-X 

•	TimeGravityAccelerometerSTD()-Y 

•	TimeGravityAccelerometerSTD()-Z 

•	TimeBodyAccelerometerJerkMean()-X 

•	TimeBodyAccelerometerJerkMean()-Y 

•	TimeBodyAccelerometerJerkMean()-Z 

•	TimeBodyAccelerometerJerkSTD()-X 

•	TimeBodyAccelerometerJerkSTD()-Y 

•	TimeBodyAccelerometerJerkSTD()-Z 

•	TimeBodyGyroscopeMean()-X 

•	TimeBodyGyroscopeMean()-Y 

•	TimeBodyGyroscopeMean()-Z 

•	TimeBodyGyroscopeSTD()-X 

•	TimeBodyGyroscopeSTD()-Y 

•	TimeBodyGyroscopeSTD()-Z 

•	TimeBodyGyroscopeJerkMean()-X 

•	TimeBodyGyroscopeJerkMean()-Y 

•	TimeBodyGyroscopeJerkMean()-Z 

•	TimeBodyGyroscopeJerkSTD()-X 

•	TimeBodyGyroscopeJerkSTD()-Y 

•	TimeBodyGyroscopeJerkSTD()-Z 

•	TimeBodyAccelerometerMagnitudeMean() 

•	TimeBodyAccelerometerMagnitudeSTD() 

•	TimeGravityAccelerometerMagnitudeMean() 

•	TimeGravityAccelerometerMagnitudeSTD() 

•	TimeBodyAccelerometerJerkMagnitudeMean() 

•	TimeBodyAccelerometerJerkMagnitudeSTD() 

•	TimeBodyGyroscopeMagnitudeMean() 

•	TimeBodyGyroscopeMagnitudeSTD() 

•	TimeBodyGyroscopeJerkMagnitudeMean() 

•	TimeBodyGyroscopeJerkMagnitudeSTD() 

•	FrequencyBodyAccelerometerMean()-X 

•	FrequencyBodyAccelerometerMean()-Y 

•	FrequencyBodyAccelerometerMean()-Z 

•	FrequencyBodyAccelerometerSTD()-X 

•	FrequencyBodyAccelerometerSTD()-Y 

•	FrequencyBodyAccelerometerSTD()-Z 

•	FrequencyBodyAccelerometerMeanFreq()-X 

•	FrequencyBodyAccelerometerMeanFreq()-Y 

•	FrequencyBodyAccelerometerMeanFreq()-Z 

•	FrequencyBodyAccelerometerJerkMean()-X 

•	FrequencyBodyAccelerometerJerkMean()-Y 

•	FrequencyBodyAccelerometerJerkMean()-Z 

•	FrequencyBodyAccelerometerJerkSTD()-X 

•	FrequencyBodyAccelerometerJerkSTD()-Y 

•	FrequencyBodyAccelerometerJerkSTD()-Z 

•	FrequencyBodyAccelerometerJerkMeanFreq()-X 

•	FrequencyBodyAccelerometerJerkMeanFreq()-Y 

•	FrequencyBodyAccelerometerJerkMeanFreq()-Z 

•	FrequencyBodyGyroscopeMean()-X 

•	FrequencyBodyGyroscopeMean()-Y 

•	FrequencyBodyGyroscopeMean()-Z 

•	FrequencyBodyGyroscopeSTD()-X 

•	FrequencyBodyGyroscopeSTD()-Y 

•	FrequencyBodyGyroscopeSTD()-Z 

•	FrequencyBodyGyroscopeMeanFreq()-X 

•	FrequencyBodyGyroscopeMeanFreq()-Y 

•	FrequencyBodyGyroscopeMeanFreq()-Z 

•	FrequencyBodyAccelerometerMagnitudeMean() 

•	FrequencyBodyAccelerometerMagnitudeSTD() 

•	FrequencyBodyAccelerometerMagnitudeMeanFreq() 

•	FrequencyBodyAccelerometerJerkMagnitudeMean() 

•	FrequencyBodyAccelerometerJerkMagnitudeSTD() 

•	FrequencyBodyAccelerometerJerkMagnitudeMeanFreq() 

•	FrequencyBodyGyroscopeMagnitudeMean() 

•	FrequencyBodyGyroscopeMagnitudeSTD() 

•	FrequencyBodyGyroscopeMagnitudeMeanFreq() 

•	FrequencyBodyGyroscopeJerkMagnitudeMean() 

•	FrequencyBodyGyroscopeJerkMagnitudeSTD() 

•	FrequencyBodyGyroscopeJerkMagnitudeMeanFreq() 

•	Angle(TimeBodyAccelerometerMean,Gravity) 

•	Angle(TimeBodyAccelerometerJerkMean),GravityMean) 

•	Angle(TimeBodyGyroscopeMean,GravityMean) 

•	Angle(TimeBodyGyroscopeJerkMean,GravityMean) 

•	Angle(X,GravityMean) Angle(Y,GravityMean) 

•	Angle(Z,GravityMean)


# Activity Labels

WALKING (value 1): subject was walking during the test

WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test

WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test

SITTING (value 4): subject was sitting during the test

STANDING (value 5): subject was standing during the test

LAYING (value 6): subject was laying down during the test

# Data Transformation

1. Merging the training and the test sets to create one data set.
2. Extracting only the measurements on the mean and standard deviation for each measurement.
3. Using descriptive activity names to name the activities in the data set
4. Appropriately labeling the data set with descriptive activity names.
5. Creating a second, independent tidy data set with the average of each variable for each activity and each subject.

# About R Script

File with R code "run_analysis.R" perform 5 following steps (in accordance assigned task of course work)

1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation for each measurement. 
3.  Uses descriptive activity names to name the activities in the data set
4.  Appropriately labels the data set with descriptive variable names. 
5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# About the Variables

1.  features contains the correct names for the x_data dataset, which are applied to the column names stored in
2.  x_train, y_train, x_test, y_test, subject_train and subject_test contain the data from the downloaded files.
3.  x_data, y_data and subject_data merge the previous datasets to further analysis.

