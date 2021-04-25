Getting and Cleaning Data Course Project Code Book

Original Data
'features_info.txt': Shows information about the variables used on the feature vector.
'features.txt': List of all features.
'activity_labels.txt': Links the class labels with their activity name.
'train/X_train.txt': Training set.
'train/y_train.txt': Training labels.
'test/X_test.txt': Test set.
'test/y_test.txt': Test labels.

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 


Final Tidy Data (final_output.txt) Variables

1. subject - identification for who performed the activity
2. label - identification for type of activity
3. mean and standard deviation of the features:
        timeBodyaccelerometermean()-X
        timeBodyaccelerometermean()-Y
        timeBodyaccelerometermean()-Z
        timeBodyaccelerometersd()-X
        timeBodyaccelerometersd()-Y
        timeBodyaccelerometersd()-Z
        timeGravityaccelerometermean()-X
        timeGravityaccelerometermean()-Y
        timeGravityaccelerometermean()-Z
        timeGravityaccelerometersd()-X
        timeGravityaccelerometersd()-Y
        timeGravityaccelerometersd()-Z
        timeBodyaccelerometerJerkmean()-X
        timeBodyaccelerometerJerkmean()-Y
        timeBodyaccelerometerJerkmean()-Z
        timeBodyaccelerometerJerksd()-X
        timeBodyaccelerometerJerksd()-Y
        timeBodyaccelerometerJerksd()-Z
        timeBodygyroscopemean()-X
        timeBodygyroscopemean()-Y
        timeBodygyroscopemean()-Z
        timeBodygyroscopesd()-X
        timeBodygyroscopesd()-Y
        timeBodygyroscopesd()-Z
        timeBodygyroscopeJerkmean()-X
        timeBodygyroscopeJerkmean()-Y
        timeBodygyroscopeJerkmean()-Z
        timeBodygyroscopeJerksd()-X
        timeBodygyroscopeJerksd()-Y
        timeBodygyroscopeJerksd()-Z
        timeBodyaccelerometermagnitudemean()
        timeBodyaccelerometermagnitudesd()
        timeGravityaccelerometermagnitudemean()
        timeGravityaccelerometermagnitudesd()
        timeBodyaccelerometerJerkmagnitudemean()
        timeBodyaccelerometerJerkmagnitudesd()
        timeBodygyroscopemagnitudemean()
        timeBodygyroscopemagnitudesd()
        timeBodygyroscopeJerkmagnitudemean()
        timeBodygyroscopeJerkmagnitudesd()
        frequencyBodyaccelerometermean()-X
        frequencyBodyaccelerometermean()-Y
        frequencyBodyaccelerometermean()-Z
        frequencyBodyaccelerometersd()-X
        frequencyBodyaccelerometersd()-Y
        frequencyBodyaccelerometersd()-Z
        frequencyBodyaccelerometerJerkmean()-X
        frequencyBodyaccelerometerJerkmean()-Y
        frequencyBodyaccelerometerJerkmean()-Z
        frequencyBodyaccelerometerJerksd()-X
        frequencyBodyaccelerometerJerksd()-Y
        frequencyBodyaccelerometerJerksd()-Z
        frequencyBodygyroscopemean()-X
        frequencyBodygyroscopemean()-Y
        frequencyBodygyroscopemean()-Z
        frequencyBodygyroscopesd()-X
        frequencyBodygyroscopesd()-Y
        frequencyBodygyroscopesd()-Z
        frequencyBodyaccelerometermagnitudemean()
        frequencyBodyaccelerometermagnitudesd()
        frequencybodyaccelerometerJerkmagnitudemean()
        frequencybodyaccelerometerJerkmagnitudesd()
        frequencybodygyroscopemagnitudemean()
        frequencybodygyroscopemagnitudesd()
        frequencybodygyroscopeJerkmagnitudemean()
        frequencybodygyroscopeJerkmagnitudesd()

Transformations
1. grouped data by subject and label then calculated the mean for all activity types
