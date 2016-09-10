# Getting-and-Cleaning-Data
# Code Book
This code book was prepared for the Coursera Class: Getting and Cleaning Data. This program will prepare a tidy data set with the average of each variable for each activity and each subject. This uses data collected from the accelerometers from the Samsung Galaxy S smartphone.

## Datafiles are from 
Human Activity Recognition Using Smartphones Dataset Version 1.0
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## The run_analysis.R does the following: 
1) Merges the training and test sets to create one data set.

2) Extracts only the measurements on the mean and standard deviation for each measurement.

3) Uses descriptive activity names to name the activities in the data set.

4) Labels the data set with descriptive variable names.

5) Creates an independent tidy data set with the average of each variable for each activity and each subject.

## The dimensions in the data set are:
subjectID – integer : unique identifier for each subject in the study (1-30)

activity – string: Laying, Sitting, Standing, Walking, Walking Downstairs, Walking Upstairs

##The measures in the data set are means of each variable by activity and subject:

TimeBodyAcc-mean()-X

TimeBodyAcc-mean()-Y

TimeBodyAcc-mean()-Z

TimeBodyAcc-std()-X

TimeBodyAcc-std()-Y

TimeBodyAcc-std()-Z

TimeGravityAcc-mean()-X

TimeGravityAcc-mean()-Y

TimeGravityAcc-mean()-Z

TimeGravityAcc-std()-X

TimeGravityAcc-std()-Y

TimeGravityAcc-std()-Z

TimeBodyAccJerk-mean()-X

TimeBodyAccJerk-mean()-Y

TimeBodyAccJerk-mean()-Z

TimeBodyAccJerk-std()-X

TimeBodyAccJerk-std()-Y

TimeBodyAccJerk-std()-Z

TimeBodyGyro-mean()-X

TimeBodyGyro-mean()-Y

TimeBodyGyro-mean()-Z

TimeBodyGyro-std()-X

TimeBodyGyro-std()-Y

TimeBodyGyro-std()-Z

TimeBodyGyroJerk-mean()-X

TimeBodyGyroJerk-mean()-Y

TimeBodyGyroJerk-mean()-Z

TimeBodyGyroJerk-std()-X

TimeBodyGyroJerk-std()-Y

TimeBodyGyroJerk-std()-Z

TimeBodyAccMag-mean()

TimeBodyAccMag-std()

TimeGravityAccMag-mean()

TimeGravityAccMag-std()

TimeBodyAccJerkMag-mean()

TimeBodyAccJerkMag-std()

TimeBodyGyroMag-mean()

TimeBodyGyroMag-std()

TimeBodyGyroJerkMag-mean()

TimeBodyGyroJerkMag-std()

FrequencyBodyAcc-mean()-X

FrequencyBodyAcc-mean()-Y

FrequencyBodyAcc-mean()-Z

FrequencyBodyAcc-std()-X

FrequencyBodyAcc-std()-Y

FrequencyBodyAcc-std()-Z

FrequencyBodyAccJerk-mean()-X

FrequencyBodyAccJerk-mean()-Y

FrequencyBodyAccJerk-mean()-Z

FrequencyBodyAccJerk-std()-X

FrequencyBodyAccJerk-std()-Y

FrequencyBodyAccJerk-std()-Z

FrequencyBodyGyro-mean()-X

FrequencyBodyGyro-mean()-Y

FrequencyBodyGyro-mean()-Z

FrequencyBodyGyro-std()-X

FrequencyBodyGyro-std()-Y

FrequencyBodyGyro-std()-Z

FrequencyBodyAccMag-mean()

FrequencyBodyAccMag-std()

FrequencyBodyBodyAccJerkMag-mean()

FrequencyBodyBodyAccJerkMag-std()

FrequencyBodyBodyGyroMag-mean()

FrequencyBodyBodyGyroMag-std()

FrequencyBodyBodyGyroJerkMag-mean()

FrequencyBodyBodyGyroJerkMag-std()
