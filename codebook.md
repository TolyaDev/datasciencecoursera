### Code book
There is 69 variables given in a `tidy.txt` dataset. Here is a description of variables 1-66 taken from a UCI HAR Dataset description:

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
> 
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
>
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
>
> These signals were used to estimate variables of the feature vector for each pattern:  
> '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
> tBodyAcc-XYZ<br/>
> tGravityAcc-XYZ<br/>
> tBodyAccJerk-XYZ<br/>
> tBodyGyro-XYZ<br/>
> tBodyGyroJerk-XYZ<br/>
> tBodyAccMag<br/>
> tGravityAccMag<br/>
> tBodyAccJerkMag<br/>
> tBodyGyroMag<br/>
> tBodyGyroJerkMag<br/>
> fBodyAcc-XYZ<br/>
> fBodyAccJerk-XYZ<br/>
> fBodyGyro-XYZ<br/>
> fBodyAccMag<br/>
> fBodyAccJerkMag<br/>
> fBodyGyroMag<br/>
> fBodyGyroJerkMag

For each of these features are given mean (`mean`) and standart deviation (`std`). Note that features above containing "XYZ" in it's name are actualy 3 variable (each for X, Y and Z).

Variable **activity** contains activity number. <br/>Variable **subject** contains subject identificator. <br/>Variable **activityname** contains an understandable name for activity described in **activity** variable.
