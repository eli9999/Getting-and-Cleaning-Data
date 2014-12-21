This codebook descripes the variables of the dataset "tidyData.csv".
+The dataset contains a total of 180 observations of 68 variables.
+
+## Subject and Activity Variables
  Subject: values of 1-30; each identify an individual that participated in the original study 
  Activity: the activity the observed individual performed; a total of 6 different activities have been observed for each individual
+
+## Feature Variables
+The original variables come from the accelerometer and gyroscope 3-axial raw signals timeAcceleraion-XYZ and timeGyroscope-XYZ. The variable is either a "time domain signal", indicated by the prefix 'time', or a "frequency domain signals", indicated by the prefix 'frequency'.



- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 
- 'features_info.txt': Shows information about the variables used on the feature vector.
Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
- Each of these variables contains the average of each variable for each activity and each subject of the original data.
- Each variable contains either the mean or the standard deviation of the original variable.
 
List:
<ul>

   timeBodyAccelerationMeanX
   timeBodyAccelerationMeanY
   timeBodyAccelerationMeanZ
   timeBodyAccelerationStdX
   timeBodyAccelerationStdY
   timeBodyAccelerationStdZ
   timeGravityAccelerationMeanX
   timeGravityAccelerationMeanY
   timeGravityAccelerationMeanZ
   timeGravityAccelerationStdX
   timeGravityAccelerationStdY
   timeGravityAccelerationStdZ
   timeBodyAccelerationJerkMeanX
   timeBodyAccelerationJerkMeanY
   timeBodyAccelerationJerkMeanZ
   timeBodyAccelerationJerkStdX
   timeBodyAccelerationJerkStdY
   timeBodyAccelerationJerkStdZ
   timeBodyGyroMeanX
   timeBodyGyroMeanY
   timeBodyGyroMeanZ
   timeBodyGyroStdX
   timeBodyGyroStdY
   timeBodyGyroStdZ
   timeBodyGyroJerkMeanX
   timeBodyGyroJerkMeanY
   timeBodyGyroJerkMeanZ
   timeBodyGyroJerkStdX
   timeBodyGyroJerkStdY
   timeBodyGyroJerkStdZ
   timeBodyAccelerationMagMean
   timeBodyAccelerationMagStd
   timeGravityAccelerationMagMean
   timeGravityAccelerationMagStd
   timeBodyAccelerationJerkMagMean
   timeBodyAccelerationJerkMagStd
   timeBodyGyroMagMean
   timeBodyGyroMagStd
   timeBodyGyroJerkMagMean
   timeBodyGyroJerkMagStd
   frequencyBodyAccelerationMeanX
   frequencyBodyAccelerationMeanY
   frequencyBodyAccelerationMeanZ
   frequencyBodyAccelerationStdX
   frequencyBodyAccelerationStdY
   frequencyBodyAccelerationStdZ
   frequencyBodyAccelerationJerkMeanX
   frequencyBodyAccelerationJerkMeanY
   frequencyBodyAccelerationJerkMeanZ
   frequencyBodyAccelerationJerkStdX
   frequencyBodyAccelerationJerkStdY
   frequencyBodyAccelerationJerkStdZ
   frequencyBodyGyroMeanX
   frequencyBodyGyroMeanY
   frequencyBodyGyroMeanZ
   frequencyBodyGyroStdX
   frequencyBodyGyroStdY
   frequencyBodyGyroStdZ
   frequencyBodyAccelerationMagMean
   frequencyBodyAccelerationMagStd
   frequencyBodyBodyAccelerationJerkMagMean
   frequencyBodyBodyAccelerationJerkMagStd
   frequencyBodyBodyGyroMagMean
   frequencyBodyBodyGyroMagStd
   frequencyBodyBodyGyroJerkMagMean
   frequencyBodyBodyGyroJerkMagStd- 
  </ul>
 

