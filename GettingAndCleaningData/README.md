# Coursera: Getting and Cleaning Data 

This folder contains all the files needed for the final course project for the "Getting and Cleaning Data" Coursera course.

## Files
* `README.md`: gives an overview of the content of this repository.
* `run_analysis.R`: retrieves the raw data and transforms it into a tidy data set.
* `tidy_data.txt`: tidy dataset obtained by running the `run_analysis.R` script.
* `CodeBook.md`: describes the content of the tidy data set.

## How to run the code
When the `run_analysis.R` script is downloaded and run it will check for the zip folder containing the raw data in the directory. If it is not found it will download and unzip it. It will then perform the modifications listed in the following lines and will generate a file in that same directory containing the resulting tidy data set.

1. Training, test and subject data sets are merged into a unique data set.
2. The Id value representing each activity type is replaced by the corresponsing activity type full name. 
3. The data which does not correspond to the mean or standard deviation for each measurement is extracted.
4. Column names are renamed to use complete words rather than abbreviations (eg. time instead of "t").
5. The mean values are computed for each measurement type grouped by objectId and activityName.
