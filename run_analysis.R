setwd("C:\\Users\\leo.kaplun\\Desktop\\Getting and Cleaning Data\\Assignment")



#PART 1 - merging train and test data into one data set
########################################################################
########################################################################
#TEST DATA

#Load test data
x_test <- read.table(".\\UCI HAR Dataset\\test\\X_test.txt", header = F)
#Load test data activity id
y_test <- read.table(".\\UCI HAR Dataset\\test\\y_test.txt", header = F, col.names="activity_id")

#Load column headers for the test data set
features <- read.table(".\\UCI HAR Dataset\\features.txt", header = F)
#Load activity labels
activity_labels <- read.table(".\\UCI HAR Dataset\\activity_labels.txt", header = F,col.names = c("id","activity"))
#Load subject numbers
subject_test <- read.table(".\\UCI HAR Dataset\\test\\subject_test.txt", header = F,col.names = "subject_tested")


#Adding column names to the test data set
names(x_test) <- features$V2



#Merge testing data with activity id and subject number
test_data <- data.frame(x_test,y_test,subject_test)
#Merge the data above with activity labels
test_data <- merge(test_data,activity_labels, by.x = "activity_id", by.y = "id", all= T)
########################################################################
#TRAIN DATA

#Load training data
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = F)
#Load training data activity id
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = F, col.names="activity_id")
#Load subject numbers
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = F,col.names = "subject_tested")

#adding column names to the train set 
names(x_train) <- features$V2 
#Merger training data with activity id and subject number
train_data <- data.frame(x_train, y_train, subject_train)
#Merge the data above with activity labels
train_data <- merge(train_data,activity_labels, by.x = "activity_id", by.y = "id", all = T)


#Merge training data set with testing data set
all_data <- rbind(test_data,train_data)

#PART 2 - extract mean and sd for each measurement
########################################################################
########################################################################
mean_sd_index <- grep("[Mm]ean|[Ss]td|subject_tested|activity",names(all_data))
mean_sd_subset <- all_data[,mean_sd_index]



#PART 3 - use descriptive activity names
########################################################################
########################################################################

#already done in part 1

#PART 4 - label the data
########################################################################
########################################################################

#already done in part 1


#PART 5 - independent tidy data set
########################################################################
########################################################################

library(plyr)

tidy_data <- ddply(mean_sd_subset,c("activity","subject_tested"), FUN = mean)

#writing the tidy_data to table
write.table(tidy_data, file = "tidy_data.txt", col.names = F)




