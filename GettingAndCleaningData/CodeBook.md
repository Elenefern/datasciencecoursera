# CodeBook

## Data modifications
The following lines list the modifications performed on the raw data and implemented by the `run_analysis.R` script.

1. Training, test and subject data sets are merged into a unique data set.
2. The Id value representing each activity type is replaced by the corresponsing activity type full name. 
3. The data which does not correspond to the mean or standard deviation for each measurement is extracted.
4. Column names are renamed to use complete words rather than abbreviations (eg. time instead of "t").
5. The mean values are computed for each measurement type grouped by objectId and activityName.

## Variables
* `subjectId`: subject identifier ranging from 1-30.
* `activityName`: activity identifier with the possible values being WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING.

The features come from the accelerometer and gyroscope 3-axial raw signals. 
The time domain signals (with prefix "time") were captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. The acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. The body linear acceleration and angular velocity were derived in time to obtain Jerk signals and their magnitude was calculated using the Euclidean norm.
The frequency domain signals (with prefix "frequency") were obtained by using a Fast Fourier Transform.

All of the features included in the data set are listed below:

### Time domain signals

* Body acceleration mean 3-axial values:
`timeBodyAccelerometer-mean()-X` 
`timeBodyAccelerometer-mean()-Y` 
`timeBodyAccelerometer-mean()-Z` 

* Body acceleration standard deviation 3-axial values:
`timeBodyAccelerometer-std()-X` 
`timeBodyAccelerometer-std()-Y` 
`timeBodyAccelerometer-std()-Z` 

* Gravity acceleration mean 3-axial values:
`timeGravityAccelerometer-mean()-X` 
`timeGravityAccelerometer-mean()-Y` 
`timeGravityAccelerometer-mean()-Z`

* Gravity acceleration standard deviation 3-axial values:
`timeGravityAccelerometer-std()-X` 
`timeGravityAccelerometer-std()-Y` 
`timeGravityAccelerometer-std()-Z` 

* Body accelerometer jerk mean 3-axial values:
"timeBodyAccelerometerJerk-mean()-X" 
"timeBodyAccelerometerJerk-mean()-Y" 
"timeBodyAccelerometerJerk-mean()-Z" 

* Body accelerometer jerk standard deviation 3-axial values:
`timeBodyAccelerometerJerk-mean()-X` 
`timeBodyAccelerometerJerk-mean()-Y` 
`timeBodyAccelerometerJerk-mean()-Z` 

* Body gyroscope mean 3-axial values:
`timeBodyGyroscope-mean()-X` 
`timeBodyGyroscope-mean()-Y` 
`timeBodyGyroscope-mean()-Z` 

* Body gyroscope standard deviation 3-axial values:
`timeBodyGyroscope-std()-X` 
`timeBodyGyroscope-std()-Y` 
`timeBodyGyroscope-std()-Z` 

* Body gyroscope mean 3-axial values:
`timeBodyGyroscopeJerk-mean()-X` 
`timeBodyGyroscopeJerk-mean()-Y` 
`timeBodyGyroscopeJerk-mean()-Z` 

* Body gyroscope standard deviation 3-axial values:
`timeBodyGyroscopeJerk-std()-X` 
`timeBodyGyroscopeJerk-std()-Y` 
`timeBodyGyroscopeJerk-std()-Z` 

* Body accelerometer mean and standard values:
`timeBodyAccelerometerMagnitude-mean()` 
`timeBodyAccelerometerMagnitude-std()`

* Gravity acceleration mean and standard deviation values:
`timeGravityAccelerometerMagnitude-mean()` 
`timeGravityAccelerometerMagnitude-std()`  

* Body accelerometer jerk mean and standard deviation values:
`timeBodyAccelerometerJerkMagnitude-mean()` 
`timeBodyAccelerometerJerkMagnitude-std()` 

* Body gyroscope mean and standard deviation values:
`timeBodyGyroscopeMagnitude-mean()` 
`timeBodyGyroscopeMagnitude-std()` 

* Body gyroscope jerk mean and standard deviation values:
`timeBodyGyroscopeJerkMagnitude-mean()` 
`timeBodyGyroscopeJerkMagnitude-std()` 

### Frequency domain signals

* Body acceleration mean 3-axial values:
`frequencyBodyAccelerometer-mean()-X` 
`frequencyBodyAccelerometer-mean()-Y` 
`frequencyBodyAccelerometer-mean()-Z` 

* Body acceleration standard deviation 3-axial values:
`frequencyBodyAccelerometer-std()-X` 
`frequencyBodyAccelerometer-std()-Y` 
`frequencyBodyAccelerometer-std()-Z` 

* Body acceleration frequency mean 3-axial values:
`frequencyBodyAccelerometer-meanFreq()-X` 
`frequencyBodyAccelerometer-meanFreq()-Y` 
`frequencyBodyAccelerometer-meanFreq()-Z` 

* Body accelerometer jerk mean values:
`frequencyBodyAccelerometerJerk-mean()-X` 
`frequencyBodyAccelerometerJerk-mean()-Y` 
`frequencyBodyAccelerometerJerk-mean()-Z` 

* Body accelerometer jerk standard deviation values:
`frequencyBodyAccelerometerJerk-std()-X` 
`frequencyBodyAccelerometerJerk-std()-Y` 
`frequencyBodyAccelerometerJerk-std()-Z` 

* Body accelerometer jerk frequency mean values:
`frequencyBodyAccelerometerJerk-meanFreq()-X` 
`frequencyBodyAccelerometerJerk-meanFreq()-Y` 
`frequencyBodyAccelerometerJerk-meanFreq()-Z` 

* Body gyroscope mean values:
`frequencyBodyGyroscope-mean()-X` 
`frequencyBodyGyroscope-mean()-Y` 
`frequencyBodyGyroscope-mean()-Z` 

* Body gyroscope standard deviation values:
`frequencyBodyGyroscope-std()-X` 
`frequencyBodyGyroscope-std()-Y` 
`frequencyBodyGyroscope-std()-Z` 

* Body gyroscope frequency mean values:
`frequencyBodyGyroscope-meanFreq()-X` 
`frequencyBodyGyroscope-meanFreq()-Y` 
`frequencyBodyGyroscope-meanFreq()-Z` 

* Body accelerometer mean, standard deviation and frequency mean values:
`frequencyBodyAccelerometerMagnitude-mean()` 
`frequencyBodyAccelerometerMagnitude-std()` 
`frequencyBodyAccelerometerMagnitude-meanFreq()` 

* Gravity acceleration mean, standard deviation and frequency mean values:
`frequencyBodyAccelerometerJerkMagnitude-mean()` 
`frequencyBodyAccelerometerJerkMagnitude-std()` 
`frequencyBodyAccelerometerJerkMagnitude-meanFreq()` 

* Body gyroscope mean, standard deviation and frequency mean values:
`frequencyBodyGyroscopeMagnitude-mean()` 
`frequencyBodyGyroscopeMagnitude-std()` 
`frequencyBodyGyroscopeMagnitude-meanFreq()`

* Body gyroscope mean, standard deviation and frequency mean values:
`frequencyBodyGyroscopeJerkMagnitude-mean()` 
`frequencyBodyGyroscopeJerkMagnitude-std()` 
`frequencyBodyGyroscopeJerkMagnitude-meanFreq()`
