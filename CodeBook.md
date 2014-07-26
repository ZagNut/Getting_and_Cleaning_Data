##### output codebook
The resultant dataset from the run_analysis.R script is an average of the measurements taken by subject and activity type for mean and standard deviation measurements in the Samsung Galaxy S sample.

Per the sample's own codebook:

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

Again, only the mean and standard deviation columns were aggregated.

The following table describes each field of the output dataset and its type.

| Field | Type | Description |
|-------|------|-------------|
| Subject | integer | The test / training subject |
| Activity | string | The activity performed |
| Average_Body_Accelerometer_X-Axis_Mean_(Time) | float | Accelerometer signal - Time domain average of mean body acceleration - X axis |
| Average_Body_Accelerometer_Y-Axis_Mean_(Time) | float | Accelerometer signal - Time domain average of mean body acceleration - Y axis |
| Average_Body_Accelerometer_Z-Axis_Mean_(Time) | float | Accelerometer signal - Time domain average of mean body acceleration - Z axis |
| Average_Body_Accelerometer_X-Axis_Standard Deviation_(Time) | float | Accelerometer signal - Time domain average of the standard deviation of body acceleration - X axis |
| Average_Body_Accelerometer_Y-Axis_Standard Deviation_(Time) | float | Accelerometer signal - Time domain average of the standard deviation of body acceleration - Y axis |
| Average_Body_Accelerometer_Z-Axis_Standard Deviation_(Time) | float | Accelerometer signal - Time domain average of the standard deviation of body acceleration - Z axis |
| Average_Gravity_Accelerometer_X-Axis_Mean_(Time) | float | Accelerometer signal - Time domain average of mean gravity acceleration - X axis |
| Average_Gravity_Accelerometer_Y-Axis_Mean_(Time) | float | Accelerometer signal - Time domain average of mean gravity acceleration - Y axis |
| Average_Gravity_Accelerometer_Z-Axis_Mean_(Time) | float | Accelerometer signal - Time domain average of mean gravity acceleration - Z axis |
| Average_Gravity_Accelerometer_X-Axis_Standard Deviation_(Time) | float | Accelerometer signal - Time domain average of the standard deviation of gravity acceleration - X axis |
| Average_Gravity_Accelerometer_Y-Axis_Standard Deviation_(Time) | float | Accelerometer signal - Time domain average of the standard deviation of gravity acceleration - Y axis |
| Average_Gravity_Accelerometer_Z-Axis_Standard Deviation_(Time) | float | Accelerometer signal - Time domain average of the standard deviation of gravity acceleration - Z axis |
| Average_Body_Accelerometer_X-Axis_Jerk_Mean_(Time) | float | Accelerometer signal - Time domain average of the mean linear "jerk" - X axis |
| Average_Body_Accelerometer_Y-Axis_Jerk_Mean_(Time) | float | Accelerometer signal - Time domain average of the mean linear "jerk" - Y axis |
| Average_Body_Accelerometer_Z-Axis_Jerk_Mean_(Time) | float | Accelerometer signal - Time domain average of the mean linear "jerk" - Z axis |
| Average_Body_Accelerometer_X-Axis_Jerk_Standard Deviation_(Time) | float | Accelerometer signal - Time domain average of the standard deviation of the linear "jerk" - X axis |
| Average_Body_Accelerometer_Y-Axis_Jerk_Standard Deviation_(Time) | float | Accelerometer signal - Time domain average of the standard deviation of the linear "jerk" - Y axis |
| Average_Body_Accelerometer_Z-Axis_Jerk_Standard Deviation_(Time) | float | Accelerometer signal - Time domain average of the standard deviation of the linear "jerk" - Z axis |
| Average_Body_Gyroscope_X-Axis_Mean_(Time) | float | Gyroscope signal - Time domain average of mean angular velocity - X axis |
| Average_Body_Gyroscope_Y-Axis_Mean_(Time) | float | Gyroscope signal - Time domain average of mean angular velocity - Y axis |
| Average_Body_Gyroscope_Z-Axis_Mean_(Time) | float | Gyroscope signal - Time domain average of mean angular velocity - Z axis |
| Average_Body_Gyroscope_X-Axis_Standard Deviation_(Time) | float | Gyroscope signal - Time domain average of the standard deviation of angular velocity - X axis |
| Average_Body_Gyroscope_Y-Axis_Standard Deviation_(Time) | float | Gyroscope signal - Time domain average of the standard deviation of angular velocity - Y axis |
| Average_Body_Gyroscope_Z-Axis_Standard Deviation_(Time) | float | Gyroscope signal - Time domain average of the standard deviation of angular velocity - Z axis |
| Average_Body_Gyroscope_X-Axis_Jerk_Mean_(Time) | float | Gyroscope signal - Time domain average of mean angular "jerk" - X axis |
| Average_Body_Gyroscope_Y-Axis_Jerk_Mean_(Time) | float | Gyroscope signal - Time domain average of mean angular "jerk" - Y axis |
| Average_Body_Gyroscope_Z-Axis_Jerk_Mean_(Time) | float | Gyroscope signal - Time domain average of mean angular "jerk" - Z axis |
| Average_Body_Gyroscope_X-Axis_Jerk_Standard Deviation_(Time) | float | Gyroscope signal - Time domain average of the standard deviation of angular "jerk" - X axis |
| Average_Body_Gyroscope_Y-Axis_Jerk_Standard Deviation_(Time) | float | Gyroscope signal - Time domain average of the standard deviation of angular "jerk" - Y axis |
| Average_Body_Gyroscope_Z-Axis_Jerk_Standard Deviation_(Time) | float | Gyroscope signal - Time domain average of the standard deviation of angular "jerk" - Z axis |
| Average_Body_Accelerometer_Magnitude_Mean_(Time) | float | Accelerometer signal - Time domain average of the mean body acceleration magnitude (Euclidean norm) |
| Average_Body_Accelerometer_Magnitude_Standard Deviation_(Time) | float | Accelerometer signal - Time domain average of the standard deviation of body acceleration magnitude (Euclidean norm) |
| Average_Gravity_Accelerometer_Magnitude_Mean_(Time) | float | Accelerometer signal - Time domain average of the mean gravity acceleration magnitude (Euclidean norm) |
| Average_Gravity_Accelerometer_Magnitude_Standard Deviation_(Time) | float | Accelerometer signal - Time domain average of the standard deviation of gravity acceleration magnitude (Euclidean norm) |
| Average_Body_Accelerometer_Jerk_Magnitude_Mean_(Time) | float | Accelerometer signal - Time domain average of the mean linear "jerk" magnitude (Euclidean norm) |
| Average_Body_Accelerometer_Jerk_Magnitude_Standard Deviation_(Time) | float | Accelerometer signal - Time domain average of the standard deviation of linear "jerk" magnitude (Euclidean norm) |
| Average_Body_Gyroscope_Magnitude_Mean_(Time) | float | Gyroscope signal - Time domain average of the mean angular velocity magnitude (Euclidean norm) |
| Average_Body_Gyroscope_Magnitude_Standard Deviation_(Time) | float | Gyroscope signal - Time domain average of the standard deviation of angular velocity magnitude (Euclidean norm) |
| Average_Body_Gyroscope_Jerk_Magnitude_Mean_(Time) | float | Gyroscope signal - Time domain average of the mean angular "jerk" magnitude (Euclidean norm) |
| Average_Body_Gyroscope_Jerk_Magnitude_Standard Deviation_(Time) | float | Gyroscope signal - Time domain average of the standard deviation of angular "jerk" magnitude (Euclidean norm) |
| Average_Body_Accelerometer_X-Axis_Mean_(Frequency) | float | Accelerometer signal - Frequency domain average of mean body acceleration - X axis |
| Average_Body_Accelerometer_Y-Axis_Mean_(Frequency) | float | Accelerometer signal - Frequency domain average of mean body acceleration - Y axis |
| Average_Body_Accelerometer_Z-Axis_Mean_(Frequency) | float | Accelerometer signal - Frequency domain average of mean body acceleration - Z axis |
| Average_Body_Accelerometer_X-Axis_Standard Deviation_(Frequency) | float | Accelerometer signal - Frequency domain average of the standard deviation of body acceleration - X axis |
| Average_Body_Accelerometer_Y-Axis_Standard Deviation_(Frequency) | float | Accelerometer signal - Frequency domain average of the standard deviation of body acceleration - Y axis |
| Average_Body_Accelerometer_Z-Axis_Standard Deviation_(Frequency) | float | Accelerometer signal - Frequency domain average of the standard deviation of body acceleration - Z axis |
| Average_Body_Accelerometer_X-Axis_Jerk_Mean_(Frequency) | float | Accelerometer signal - Frequency domain average of the mean linear "jerk" - X axis |
| Average_Body_Accelerometer_Y-Axis_Jerk_Mean_(Frequency) | float | Accelerometer signal - Frequency domain average of the mean linear "jerk" - Y axis |
| Average_Body_Accelerometer_Z-Axis_Jerk_Mean_(Frequency) | float | Accelerometer signal - Frequency domain average of the mean linear "jerk" - Z axis |
| Average_Body_Accelerometer_X-Axis_Jerk_Standard Deviation_(Frequency) | float | Accelerometer signal - Frequency domain average of the standard deviation of the linear "jerk" - X axis |
| Average_Body_Accelerometer_Y-Axis_Jerk_Standard Deviation_(Frequency) | float | Accelerometer signal - Frequency domain average of the standard deviation of the linear "jerk" - Y axis |
| Average_Body_Accelerometer_Z-Axis_Jerk_Standard Deviation_(Frequency) | float | Accelerometer signal - Frequency domain average of the standard deviation of the linear "jerk" - Z axis |
| Average_Body_Gyroscope_X-Axis_Mean_(Frequency) | float | Gyroscope signal - Frequency domain average of mean angular velocity - X axis |
| Average_Body_Gyroscope_Y-Axis_Mean_(Frequency) | float | Gyroscope signal - Frequency domain average of mean angular velocity - Y axis |
| Average_Body_Gyroscope_Z-Axis_Mean_(Frequency) | float | Gyroscope signal - Frequency domain average of mean angular velocity - Z axis |
| Average_Body_Gyroscope_X-Axis_Standard Deviation_(Frequency) | float | Gyroscope signal - Frequency domain average of the standard deviation of angular velocity - X axis |
| Average_Body_Gyroscope_Y-Axis_Standard Deviation_(Frequency) | float | Gyroscope signal - Frequency domain average of the standard deviation of angular velocity - Y axis |
| Average_Body_Gyroscope_Z-Axis_Standard Deviation_(Frequency) | float | Gyroscope signal - Frequency domain average of the standard deviation of angular velocity - Z axis |
| Average_Body_Accelerometer_Magnitude_Mean_(Frequency) | float | Accelerometer signal - Frequency domain average of the mean body acceleration magnitude (Euclidean norm) |
| Average_Body_Accelerometer_Magnitude_Standard Deviation_(Frequency) | float | Accelerometer signal - Frequency domain average of the standard deviation of body acceleration magnitude (Euclidean norm) |
| Average_Body_Accelerometer_Jerk_Magnitude_Mean_(Frequency) | float | Accelerometer signal - Frequency domain average of the mean linear "jerk" magnitude (Euclidean norm) |
| Average_Body_Accelerometer_Jerk_Magnitude_Standard Deviation_(Frequency) | float | Accelerometer signal - Frequency domain average of the standard deviation of linear "jerk" magnitude (Euclidean norm) |
| Average_Body_Gyroscope_Magnitude_Mean_(Frequency) | float | Gyroscope signal - Frequency domain average of the mean angular velocity magnitude (Euclidean norm) |
| Average_Body_Gyroscope_Magnitude_Standard Deviation_(Frequency) | float | Gyroscope signal - Frequency domain average of the standard deviation of angular velocity magnitude (Euclidean norm) |
| Average_Body_Gyroscope_Jerk_Magnitude_Mean_(Frequency) | float | Gyroscope signal - Frequency domain average of the mean angular "jerk" magnitude (Euclidean norm) |
| Average_Body_Gyroscope_Jerk_Magnitude_Standard Deviation_(Frequency) | float | Gyroscope signal - Frequency domain average of the standard deviation of angular "jerk" magnitude (Euclidean norm) |
