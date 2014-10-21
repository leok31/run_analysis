###Data Description
The data used to create this tidy dataset is the data collected from the accelerometers from the Samsung Galaxy S smartphone.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

###Data Trainsformation

1. Loading, naming and merging data into a single data frame

- Load the x test data into a x_test variable
- Load the y test data into a y_test variable
- Load the column headers for the test data into features variable
- Load the activity labels into activity_bales variable
- Load the subject tested into a subject_test variable 
- Replace the default names for the x test data with the actual column headers from the features variable
- Merge the x_test data with the y_test data into a test_data data frame
- Join the test_data df with the activity_label df to substitute the activity id’s with actual activity names

Repeat the above process for the train data.

- Merge the test_data df with train_data df into a single df, call it all_data

2. Extracting the mean and standard deviation from each measure

Using the R function grep() and standard expressions, extract any columns that contain the words mean and/or std. Place these columns into a separate valriable, call it mean_sd_subset

3. Creating an independent eta set with the average for each variable for each activity and each subject

use the ddply() function form the plyr library to calculate the mean for each group, store the result in a variable called tidy_data.

###Variable Definition

| ColNumber | ColName                              | Definition                                                                                                 |
|-----------|--------------------------------------|------------------------------------------------------------------------------------------------------------|
| 1         | activity_id                          | Id of the activity performed, its range is from 1 to 6                                                     |
| 2         | tBodyAcc.mean.X                      | mean value                                                                                                 |
| 3         | tBodyAcc.mean.Y                      | mean value                                                                                                 |
| 4         | tBodyAcc.mean.Z                      | mean value                                                                                                 |
| 5         | tBodyAcc.std.X                       | standard deviation                                                                                         |
| 6         | tBodyAcc.std.Y                       | standard deviation                                                                                         |
| 7         | tBodyAcc.std.Z                       | standard deviation                                                                                         |
| 8         | tGravityAcc.mean.X                   | mean value                                                                                                 |
| 9         | tGravityAcc.mean.Y                   | mean value                                                                                                 |
| 10        | tGravityAcc.mean.Z                   | mean value                                                                                                 |
| 11        | tGravityAcc.std.X                    | standard deviation                                                                                         |
| 12        | tGravityAcc.std.Y                    | standard deviation                                                                                         |
| 13        | tGravityAcc.std.Z                    | standard deviation                                                                                         |
| 14        | tBodyAccJerk.mean.X                  | mean value                                                                                                 |
| 15        | tBodyAccJerk.mean.Y                  | mean value                                                                                                 |
| 16        | tBodyAccJerk.mean.Z                  | mean value                                                                                                 |
| 17        | tBodyAccJerk.std.X                   | standard deviation                                                                                         |
| 18        | tBodyAccJerk.std.Y                   | standard deviation                                                                                         |
| 19        | tBodyAccJerk.std.Z                   | standard deviation                                                                                         |
| 20        | tBodyGyro.mean.X                     | mean value                                                                                                 |
| 21        | tBodyGyro.mean.Y                     | mean value                                                                                                 |
| 22        | tBodyGyro.mean.Z                     | mean value                                                                                                 |
| 23        | tBodyGyro.std.X                      | standard deviation                                                                                         |
| 24        | tBodyGyro.std.Y                      | standard deviation                                                                                         |
| 25        | tBodyGyro.std.Z                      | standard deviation                                                                                         |
| 26        | tBodyGyroJerk.mean.X                 | mean value                                                                                                 |
| 27        | tBodyGyroJerk.mean.Y                 | mean value                                                                                                 |
| 28        | tBodyGyroJerk.mean.Z                 | standard deviation                                                                                         |
| 29        | tBodyGyroJerk.std.X                  | standard deviation                                                                                         |
| 30        | tBodyGyroJerk.std.Y                  | standard deviation                                                                                         |
| 32        | tBodyGyroJerk.std.Z                  | standard deviation                                                                                         |
| 33        | tBodyAccMag.mean                     | mean value                                                                                                 |
| 34        | tBodyAccMag.std                      | standard deviation                                                                                         |
| 35        | tGravityAccMag.mean                  | mean value                                                                                                 |
| 36        | tGravityAccMag.std                   | standard deviation                                                                                         |
| 37        | tBodyAccJerkMag.mean                 | mean value                                                                                                 |
| 38        | tBodyAccJerkMag.std                  | standard deviation                                                                                         |
| 39        | tBodyGyroMag.mean                    | mean value                                                                                                 |
| 30        | tBodyGyroMag.std                     | standard deviation                                                                                         |
| 40        | tBodyGyroJerkMag.mean                | mean value                                                                                                 |
| 41        | tBodyGyroJerkMag.std                 | standard deviation                                                                                         |
| 42        | fBodyAcc.mean.X                      | mean value                                                                                                 |
| 43        | fBodyAcc.mean.Y                      | mean value                                                                                                 |
| 44        | fBodyAcc.mean.Z                      | mean value                                                                                                 |
| 45        | fBodyAcc.std.X                       | standard deviation                                                                                         |
| 46        | fBodyAcc.std.Y                       | standard deviation                                                                                         |
| 47        | fBodyAcc.std.Z                       | standard deviation                                                                                         |
| 48        | fBodyAcc.meanFreq.X                  | standard deviation                                                                                         |
| 49        | fBodyAcc.meanFreq.Y                  | standard deviation                                                                                         |
| 50        | fBodyAcc.meanFreq.Z                  | standard deviation                                                                                         |
| 51        | fBodyAccJerk.mean.X                  | mean value                                                                                                 |
| 52        | fBodyAccJerk.mean.Y                  | mean value                                                                                                 |
| 53        | fBodyAccJerk.mean.Z                  | mean value                                                                                                 |
| 54        | fBodyAccJerk.std.X                   | standard deviation                                                                                         |
| 55        | fBodyAccJerk.std.Y                   | standard deviation                                                                                         |
| 56        | fBodyAccJerk.std.Z                   | standard deviation                                                                                         |
| 57        | fBodyAccJerk.meanFreq.X              | mean value                                                                                                 |
| 58        | fBodyAccJerk.meanFreq.Y              | mean value                                                                                                 |
| 59        | fBodyAccJerk.meanFreq.Z              | mean value                                                                                                 |
| 60        | fBodyGyro.mean.X                     | mean value                                                                                                 |
| 61        | fBodyGyro.mean.Y                     | mean value                                                                                                 |
| 62        | fBodyGyro.mean.Z                     | mean value                                                                                                 |
| 63        | fBodyGyro.std.X                      | standard deviation                                                                                         |
| 64        | fBodyGyro.std.Y                      | standard deviation                                                                                         |
| 65        | fBodyGyro.std.Z                      | standard deviation                                                                                         |
| 66        | fBodyGyro.meanFreq.X                 | mean value                                                                                                 |
| 67        | fBodyGyro.meanFreq.Y                 | mean value                                                                                                 |
| 68        | fBodyGyro.meanFreq.Z                 | mean value                                                                                                 |
| 69        | fBodyAccMag.mean                     | mean value                                                                                                 |
| 70        | fBodyAccMag.std                      | standard deviation                                                                                         |
| 71        | fBodyAccMag.meanFreq                 | mean value                                                                                                 |
| 72        | fBodyBodyAccJerkMag.mean             | mean value                                                                                                 |
| 73        | fBodyBodyAccJerkMag.std              | standard deviation                                                                                         |
| 74        | fBodyBodyAccJerkMag.meanFreq         | mean value                                                                                                 |
| 75        | fBodyBodyGyroMag.mean                | mean value                                                                                                 |
| 76        | fBodyBodyGyroMag.std                 | standard deviation                                                                                         |
| 77        | fBodyBodyGyroMag.meanFreq            | mean value                                                                                                 |
| 78        | fBodyBodyGyroJerkMag.mean            | mean value                                                                                                 |
| 79        | fBodyBodyGyroJerkMag.std             | standard deviation                                                                                         |
| 80        | fBodyBodyGyroJerkMag.meanFreq        | mean value                                                                                                 |
| 81        | angle.tBodyAccMean.gravity           | mean value                                                                                                 |
| 82        | angle.tBodyAccJerkMean.gravityMean   | mean value                                                                                                 |
| 83        | angle.tBodyGyroMean.gravityMean      | mean value                                                                                                 |
| 84        | angle.tBodyGyroJerkMean.gravityMean  | mean value                                                                                                 |
| 85        | angle.X.gravityMean                  | mean value                                                                                                 |
| 86        | angle.Y.gravityMean                  | mean value                                                                                                 |
| 87        | angle.Z.gravityMean                  | mean value                                                                                                 |
| 88        | subject_tested                       | Number identifies the subject who performed the activity for each window sample. Its range is from 1 to 30 |
| 89        | activity                             | Name of the activity performed                                                                             |