# Getting-and-Cleaning-Data-Course-Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation for each measurement.
3.  Uses descriptive activity names to name the activities in the data set
4.  Appropriately labels the data set with descriptive variable names.
5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#In the run_analysis.R script, were recreated each step.

This file 'run_analysis.R' contains all the code to perform the analyses described in the 5 steps. They can be launched in RStudio by just importing the file.

# The Research Data

This repository contains R code for downloading and tidying the Human Activity Recognition using Smartphones Dataset, as per the instructions given for the project of the “Getting and Cleaning Data” course. It's supposed that archive is extracted to the working directory.

The following files from the initial dataset is used:

_**features.txt**_ - includes the descriptions for features measured

_**train/X_train.txt**_ - includes the measurements of the features in train set (one row - 1 measurement of 561 features)

_**test/X_test.txt**_ - includes the measurements of the features in test set

_**train/subject_train.txt**_ - subject for each measurement from the train set

_**test/subject_test.txt**_ - subject for each measurement from the test set

_**train/y_train.txt**_ - activity (from 1 to 6) for each measurement from the train set

_**test/y_test.txt**_ - activity (from 1 to 6) for each measurement from the test set

# About The Script

The R script, **run_analysis.R**, does the following:
1. Download the dataset and unzip it in the working directory.
2. Load the supporting metadata of activity labels and feature info.
3. Loads complete data for both the training and test datasets. Let's look at these loading process considering train set:
3.1 Firstly loads the measurements from X_train.txt as a data frame.
3.2 activity labels and subjects for measurements are also loaded from files train/y_train.txt and train/subject_train.txt.
4. Same steps are repeated for loading data from test datasets.
5. Combined dataset for subject, activity and features are created by merging training and test datasets.
6. Name the columns in featuresDataset from featureNames.
7. Naming appropriate column names for Activity and Subject
8. Merge the subject, activity and features data to create one dataset
9. Extracting only the measurements on the mean and standard deviation for each measurement
10. Using descriptive activity names to name the activities in the data set
11. Converts the activity and subject columns into factors
12. Appropriately label the data set with descriptive variable names of Course Project
13. Creates a tidy dataset “tidyDataset.txt” that consists of the average (mean) value of each variable for each subject and activity pair.



