run_analysis
============
1. Loading, naming and merging data into a single data frame

Load the x test data into a x_test variable
Load the y test data into a y_test variable
Load the column headers for the test data into features variable
Load the activity labels into activity_bales variable
Load the subject tested into a subject_test variable 

Replace the default names for the x test data with the actual column headers from the features variable

Merge the x_test data with the y_test data into a test_data data frame
Join the test_data df with the activity_label df to substitute the activity id’s with actual activity names

Repeat the above process for the train data.

Merge the test_data df with train_data df into a single df, call it all_data

2. Extracting the mean and standard deviation from each measure

Using R function grep() and standard expressions extract any columns that contain the words “mean” or “std”. Place these columns into a separate variable, call it mean_sd_subset.

3. Creating an independent eta set with the average for each variable for each activity and each subject

use the ddply() function form the plyr library to calculate the mean for each group, store the result in a variable called tidy_data.
