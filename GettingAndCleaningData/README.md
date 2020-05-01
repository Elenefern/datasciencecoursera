# Coursera: Getting and Cleaning Data 

This folder contains all the files needed for the final course project for the "Getting and Cleaning Data" Coursera course.

## Files
* `README.md`: gives an overview of the content of this repository.
* `run_analysis.R`: retrieves the raw data and transforms it into a tidy data set.
* `tidy_data.txt`: tidy dataset obtained by running the `run_analysis.R` script.
* `CodeBook.md`: describes the content of the tidy data set.

## Data transformations
The following lines list the steps performed on the `run_analysis.R` script in order to transform the raw data into a tidy data set.
1. Retrieve the zip folder containing the raw data.
2. Unzip the data.
3. Load the data.
4. Merge the training and the test sets to create one data set.
5. Extract the measurements on the mean and standard deviation for each measurement.
6. Use the descriptive activity names to name the activities in the data set.
7. Appropriately label the data set with descriptive variable names.
8. Create a second and independent tidy data set with the average of each variable for each activity and each subject.
