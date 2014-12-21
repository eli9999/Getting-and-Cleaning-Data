## Create one R script called run_analysis.R that does the following. 
## 1. Merges the training and the test sets to create one data set.

rm(list=ls())
## Cleaning memory.

setwd ("/UCI Har Dataset")
##get(wd)

## Importing data of subjects, trainings, features, activity labels.

subject_train <- read.table("/UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = "")
x_train <- read.table ("/UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "")
y_train <- read.table("/UCI HAR Dataset/train/y_train.txt", header = FALSE, sep = "")

features <-  read.table("/UCI HAR Dataset/features.txt",header=FALSE) 
activity_label <-  read.table("/UCI HAR Dataset/activity_labels.txt", header=FALSE)
 

## Assigning names to columns.

colnames(subject_train)  <- "subject_name"
colnames(x_train)   <- features[, 2]
colnames(y_train)     <- "activity_name"
colnames(activity_label)  <- c("activity_name", "ActivityLabel")


## Merging subject_train, x_train and y_train to make a training data.

train_data <- cbind(subject_train, x_train, y_train)

## Importing the test data. 

subject_test <- read.table("/UCI HAR Dataset/test/subject_test.txt", header=FALSE) 

x_test <- read.table("/UCI HAR Dataset/test/X_test.txt", header=FALSE) 

y_test <- read.table("/UCI HAR Dataset/test/y_test.txt", header=FALSE) 


## Assigning names to columns.

colnames(subject_test) <- "subject_name"
colnames(x_test) <- features[, 2]
colnames(y_test)  <- "activity_name"


## Merging subject_test, x_test and y_test to make a testing data.

test_data <- cbind(subject_test, x_test, y_test)

# Merging training and test data to making one data set.

data_set <- rbind(train_data, test_data)

colnames  <- colnames(data_set)

## Collect here mean() & stddev() columns from the data set.


## 2. Extract only the measurements on the mean and standard deviation for each measurement. 

## Make data TRUE for the names, mean() and stddev() columns and FALSE for others

select_data <- (grepl("activity..", colnames) | grepl("subject..", colnames) | grepl("-mean..", colnames) & !grepl("-meanFreq..", colnames) & !grepl("mean..-", colnames) | grepl("-std..", colnames) & !grepl("-std()..-", colnames))

# Subseting dataset table based on the selected data to get columns you need.

data_set <- data_set[select_data == TRUE]

## 3. Use descriptive activity names to name the activities in the data set.

## Merge the data set with the acitivity labels table to include descriptive activity names.

data_set <- merge(data_set, activity_label, by = "activity_name", all.x = TRUE)

## Updating data to include the new column names after merge.

col_names  <- colnames(data_set)

## 4. Appropriately labels the data set with descriptive variable names. 
for (i in 1:length(col_names)) 
{col_names[i] <-  gsub("-mean", "Mean", col_names[i])
 col_names[i] <-  gsub("-std$", "Std", col_names[i])
 col_names[i] <- gsub("\\()","", col_names[i])
 col_names[i] <- gsub("^f", "requency", col_names[i])
 col_names[i] <-  gsub("^t", "time", col_names[i])
 col_names[i] <- gsub("Acc", "Acceleration", col_names[i])
 col_names[i] <-  gsub("Gyro", "Gyroscope", col_names[i])}

## Appropriately labels the data set with descriptive variable names. Giving column names to the data set.

colnames(data_set) <- col_names

## 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. 

## Create a new table, excluding the activity label column.

data_setrem_act_label  <- data_set[, names(data_set) != "activity_label"]

## Summarizing the data set to include the mean of each variable for each activity and each subject.

tidy_data_set  <- aggregate(data_setrem_act_label[, names(data_setrem_act_label) != c("activity_name", "subject_name")], by = list(activity_name = data_setrem_act_label$activity_name, subject_name = data_setrem_act_label$subject_name), mean)

## Merging the tidy data set with activity label.

tidy_data_set  <- merge(tidy_data_set, activity_label, by="activity_name", all.x=TRUE)

setwd ("/UCI Har Dataset")

## Export the tidy_data_set set 

write.csv(tidy_data_set, file = "tidy_data_set1.csv", row.names = FALSE)
write.table(tidy_data_set, file = "tidy_data_set2.txt", row.names = FALSE)
write.table(tidy_data_set, file = "tidy_data_set3.R", row.names = FALSE)





