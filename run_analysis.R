install.packages("plyr")

filename <- "UCI_zip"

#check if archieve exists
if (!file.exists(filename)){
  fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileurl,destfile = filename)
}
#check if folder exists
if (!file.exists("UCI DATA")){
  unzip(filename)
}
#Assigning dataframes

features <- read.table("UCI HAR Dataset/features.txt",header = FALSE)
head(features)
names(features)
names(features) <- c("feature_id","feature_label") #rename columns

activity <- read.table("UCI HAR Dataset/activity_labels.txt",header = FALSE)
head(activity)
names(activity)
names(activity) <- c("activity_id","activity_label")

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
head(subject_test)
names(subject_test)
names(subject_test) <- "subject_id"

x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
head(x_test)
names(x_test)
names(x_test) <- features$feature_label #matches to the features dataset
names(x_test)

y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
head(y_test)
names(y_test)
names(y_test) <- "activity_id"

y_test <- arrange(merge(y_test,activity),activity_id)
head(y_test)

#training dataset
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
head(subject_train)
names(subject_train)
names(subject_train) <- "subject_id"

x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
head(x_train)
names(x_train)
names(x_train) <- features$feature_label

y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
head(y_train)
names(y_train)
names(y_train) <- "activity_id"
y_train <- arrange(merge(y_train,activity),activity_id)
head(y_train)

#combine datasets
test_master <- cbind(subject_test,x_test,y_test)
head(test_master)

train_master <- cbind(subject_train,x_train,y_train)
head(train_master)

combined_data <- rbind(train_master,test_master)
head(combined_data)
names(combined_data)

#Extracts only the measurements on the mean and standard deviation for each measurement.

mean_std <- grep("subject|activity|mean|std",names(combined_data),value = TRUE)
mean_std
filter_data <- combined_data[mean_std]
head(filter_data)

#Uses descriptive activity names to name the activities in the data set
names(combined_data) <- gsub("-std()","STD",names(combined_data),ignore.case=TRUE) 
names(combined_data) <- gsub("-mean()","Mean",names(combined_data),ignore.case=TRUE) 
names(combined_data) <- gsub("-freq()","Frequency",names(combined_data),ignore.case = TRUE)
names(combined_data) <- gsub("tBody","TimeBody",names(combined_data))
names(combined_data) <- gsub("angle","Angle",names(combined_data))
names(combined_data) <- gsub("gravity","Gravity",names(combined_data))
names(combined_data)<-gsub("Acc", "Accelerometer", names(combined_data))
names(combined_data)<-gsub("Gyro", "Gyroscope", names(combined_data))
names(combined_data)<-gsub("BodyBody", "Body", names(combined_data))
names(combined_data)<-gsub("Mag", "Magnitude", names(combined_data))
names(combined_data)<-gsub("^t", "Time", names(combined_data))
names(combined_data)<-gsub("^f", "Frequency", names(combined_data))


names(filter_data)
head(filter_data)
tail(filter_data)
#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
names(filter_data)
avg_filt_dat <- filter_data %>% group_by(subject_id,activity_label) %>% summarise_all(funs(mean))
avg_filt_dat
 
write.table(avg_filt_dat, "FinalData.txt", row.name=FALSE)




















