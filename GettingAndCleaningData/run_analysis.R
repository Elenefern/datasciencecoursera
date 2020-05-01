library(dplyr)

# Set working directory to location of file
setwd(dirname(rstudioapi::getSourceEditorContext()$path))

# Download data
zipFolderName <- "UCI_HAR_Dataset.zip"
if(!file.exists(zipFolderName)){
  zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(zipUrl, zipFolderName)
}

# Unzip 
relDataPath <- "UCI HAR Dataset"
if(!file.exists(dataPath)){
  unzip(zipFolderName)
}

pathData = file.path(dirname(rstudioapi::getSourceEditorContext()$path), relDataPath )
setwd(pathData)

# Load data
features <- read.table("features.txt", header = FALSE)
activities <- read.table("activity_labels.txt", header = FALSE)
subject_test <- read.table("test/subject_test.txt", header = FALSE)
x_test <- read.table("test/X_test.txt", header = FALSE)
y_test <- read.table("test/y_test.txt", header = FALSE)
subject_train <- read.table("train/subject_train.txt", header = FALSE)
x_train <- read.table("train/X_train.txt", header = FALSE)
y_train <- read.table("train/y_train.txt", header = FALSE)

# Name columns 
colnames(activities) = c("activityId", "activityName")
colnames(subject_test) = c("subjectId")
colnames(x_test) = features[,2]
colnames(y_test) = c("activityId")
colnames(subject_train) = c("subjectId")
colnames(x_train) = features[,2]
colnames(y_train) = c("activityId")


# 1. Merge data sets
testData <- cbind(subject_test, y_test, x_test)
trainData <- cbind(subject_train, y_train, x_train)
allData <- rbind(testData, trainData)

# 2. Extract mean and standard deviation for each measurement.
meanAndDeviationCols <- grep("subjectId|activityId|mean|std", colnames(allData))
meanAndDeviationData <- allData[,meanAndDeviationCols]

# 3. Descriptively name the activities
meanAndDeviationData$activityId <- activities[meanAndDeviationData$activityId,2]
meanAndDeviationData <- rename(meanAndDeviationData, activityName = activityId)

# 4. Label the data with descriptive names
names(meanAndDeviationData)<-gsub("Acc", "Accelerometer", names(meanAndDeviationData))
names(meanAndDeviationData)<-gsub("Gyro", "Gyroscope", names(meanAndDeviationData))
names(meanAndDeviationData)<-gsub("Mag", "Magnitude", names(meanAndDeviationData))
names(meanAndDeviationData)<-gsub("BodyBody", "Body", names(meanAndDeviationData))
names(meanAndDeviationData)<-gsub("^t", "time", names(meanAndDeviationData))
names(meanAndDeviationData)<-gsub("^f", "frequency", names(meanAndDeviationData))

# 5. Create an independent tidy data set with the average of each variable for each activity and each subject.
tidy_data <- meanAndDeviationData %>% group_by(subjectId, activityName) %>% summarise_all(mean)

setwd('..')
write.table(tidy_data, file="tidy_data.txt")