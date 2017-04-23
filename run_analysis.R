# Downloading dataset
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile = "dataset.zip")
# Extracting it
unzip("dataset.zip")

# Checking if data.tables package is installed 
if (!require("data.table")) {
  install.packages("data.table")
}
library(data.table)

# Reading general data
features <- read.table("./UCI HAR Dataset/features.txt")
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)

# Reading training data
trainingSubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
trainingActivities <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
trainingFeatures <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)

# Reading test data
testSubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
testActivities <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
testFeatures <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)

#Step 1. Merges the training and the test sets to create one data set.
mergedSubjects <-rbind(trainingSubjects, testSubjects)
mergedActivities <- rbind(trainingActivities, testActivities)
mergedFeatures <- rbind(trainingFeatures, testFeatures)

# Adding colnames
colnames(mergedFeatures) <- t(features[2])
colnames(mergedActivities) <- "Activity"
colnames(mergedSubjects) <- "Subject"

# Join everything
mergedData <- cbind(mergedFeatures,mergedActivities,mergedSubjects)

#Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.
columnsWithMeanSTD <- grep(".*mean\\(\\).*|.*std\\(\\).*", names(mergedData), ignore.case=TRUE)
# mean Frequency variables are not considered as they are weighted variables
# but if you prefer they can be included by replacing last expression by this one:
# columnsWithMeanSTD <- grep(".*mean.*|.*std.*", names(mergedData), ignore.case=TRUE)

extractedData <- completeData[,columnsWithMeanSTD]

# Step 3. Uses descriptive activity names to name the activities in the data set
colnames(activityLabels) <- c("IdActivity", "NameOfActivity")
mergedData <- merge(x=mergedData, y=activityLabels, by.x="Activity", by.y="IdActivity")
# old Activity column is not needed anymore
mergedData$Activity <- NULL

# Step 4. Appropriately labels the data set with descriptive variable names. 
names(mergedData)<-gsub("Acc", "Accelerometer", names(mergedData))
names(mergedData)<-gsub("Gyro", "Gyroscope", names(mergedData))
names(mergedData)<-gsub("BodyBody", "Body", names(mergedData))
names(mergedData)<-gsub("Mag", "Magnitude", names(mergedData))
names(mergedData)<-gsub("^t", "Time", names(mergedData))
names(mergedData)<-gsub("^f", "Frequency", names(mergedData))
names(mergedData)<-gsub("tBody", "TimeBody", names(mergedData))
names(mergedData)<-gsub("-mean()", "Mean", names(mergedData), ignore.case = TRUE)
names(mergedData)<-gsub("-std()", "StandardDeviation", names(mergedData), ignore.case = TRUE)
names(mergedData)<-gsub("-freq()", "Frequency", names(mergedData), ignore.case = TRUE)
names(mergedData)<-gsub("-mad()", "MedianAbsoluteDeviation", names(mergedData), ignore.case = TRUE)
names(mergedData)<-gsub("-arCoeff()", "AutorregresionCoefficients", names(mergedData), ignore.case = TRUE)
names(mergedData)<-gsub("-sma()", "SignalMagnitudeArea", names(mergedData))
names(mergedData)<-gsub("-iqr()", "InterquartileRange", names(mergedData))
names(mergedData)<-gsub("angle", "Angle", names(mergedData))
names(mergedData)<-gsub("gravity", "Gravity", names(mergedData))

# Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidyData <- aggregate(. ~Subject + NameOfActivity, mergedData, mean)
tidyData <- tidyData[order(tidyData$Subject,tidyData$NameOfActivity),]
write.table(tidyData, file = "Tidy.txt", row.names = FALSE, sep=";")
