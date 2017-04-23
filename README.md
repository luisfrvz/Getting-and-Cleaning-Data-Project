# Getting-and-Cleaning-Data-Project

## run_analysis.R

The cleanup script (run_analysis.R) does the following:
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement.
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive activity names.
  5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Steps to work on this course project

- Run source("run_analysis.R")
- The script will download the original dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and store it as dataset.zip
- Then data will be extracted to a folder named UCI HAR Dataset
- As final step a file named Tidy.txt with separator ";" will be generated in your working directory as solution to step 5 below 

## Dependencies

run_analysis.R file will install the dependencies automatically. It only depends on data.table package.
