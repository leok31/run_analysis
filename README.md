run_analysis
============

This repo contains a single script that has all the code neccessary to read in the data, merge it, clean it and create the required tidy dataset.

The scrip is divided into 5 parts as follows:
Part 1:
- merging train and test data into one data set
- apply descriptive activity names
- label the data
The end result of Part 1 is a data frame names 'all_data' with 10,299 rows and 564 columns.


Part 2:
- extract mean and sd for each measurement
Using Regular Expressions Part 2 will extract all columns that have any of the folling in the name:
    - Mean/mean, Std, std, subject_tested, activty
Part 3:
The aim of this part was to give proper names to the activities. However this step was already completed in Part 1.
Part 3 is only included in the script for completness.

Part 4:
- changes the column names to make them more descriptive
This part removes multiple dots from the column name. This allows easier quering of the data.

Part 4:
- create a tidy data set
Using `ddply()` function this code calculates the mean for each activity and each subject.
Then using the `write.table()` function the new dataset is written to the disk as a .txt file

For more information on the folling, please see CodeBook.MD in this repo:

- description of variables
- description of the data
- details on transacformation of the data