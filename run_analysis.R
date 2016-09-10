##Peer Graded Assignment: Getting and Cleaning Data Course Project
##Class 3 Week 4 Assignment

##Data collected from the accelerometers from the Samsung Galaxy S smartphone.

##(1) Merge the training and the test sets to create one data set.
#Load all data
features <- read.table("features.txt") 
activity_labels <- read.table("activity_labels.txt")
subject_train <- read.table("./train/subject_train.txt")
X_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
subject_test <- read.table("./test/subject_test.txt")
X_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")

#add column name for subject files 
names(subject_train) <- "subjectID" 
names(subject_test) <- "subjectID" 

#add column names for measurement files 
names(X_train) <- featureNames$V2 
names(X_test) <- featureNames$V2 

#add column name for label files 
names(y_train) <- "activity" 
names(y_test) <- "activity" 

#combine data
train <- cbind(subject_train, y_train, X_train) 
test <- cbind(subject_test, y_test, X_test) 
combineData <- rbind(train, test) 

##(2) Extracts only the measurements on the mean and standard deviation for each measurement.
#Grab columns with mean and standard deviations
meanstdcols <- grepl("mean\\()|std\\()", names(combineData))

#keep the subjectID and activity columns 
meanstdcols[1:2] <- TRUE 

#remove unnecessary columns 
combineData2 <- combineData[, meanstdcols] 

##(3) Uses descriptive activity names to name the activities in the data set
combineData2$activity <- factor(combineData2$activity, labels=c("Walking", 
        "Walking_Upstairs", "Walking_Downstairs", "Sitting", "Standing", "Laying")) 

##(4) Appropriately labels the data set with descriptive variable names.
# Change t to Time, f to Frequency
names(combineData2) <- gsub("^t", "Time", names(combineData2)) 
names(combineData2) <- gsub("^f", "Frequency", names(combineData2)) 

##(5) From the data set in step 4, creates a second, independent tidy data 
##    set with the average of each variable for each activity and each subject.

library(reshape2) 

#create a tidy data set with the average of each variable for each activity and each subject. 
melted <- melt(combineData2, id=c("subjectID","activity")) 
tidyAvg <- dcast(melted, subjectID+activity ~ variable, mean) 

#write data set to file 
write.table(tidyAvg, "tidyAvg.txt", row.names=FALSE) 
