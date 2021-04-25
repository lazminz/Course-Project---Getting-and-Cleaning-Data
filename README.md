# Course-Project -Getting and Cleaning Data

The purpose of the run_analysis script is to analyse the usage data (found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) of the wearable smartphone Samsung Galaxy S II.


Original Data

1. 'features_info.txt': Shows information about the variables used on the feature vector.
2. 'features.txt': List of all features.
3. 'activity_labels.txt': Links the class labels with their activity name.
4. 'train/X_train.txt': Training set.
5. 'train/y_train.txt': Training labels.
6. 'test/X_test.txt': Test set.
7. 'test/y_test.txt': Test labels.

Analysis in run_analysis script
1. Download tha data.
2. Open relevant txt files with data (see Original Data list) then label the columns appropirately.
3. Merge the training data and test data into one data set by binding rows of x, y and subject data. Then bind all by column to create one large data set "all_data".
4. Select only the measurements on the mean and standard deviation for each measurement by searching for features which contain mean or std.
5. Create the "final_data" selecting columns for these measurements only.
6. Adjust the headers in "final_data".
7. Group the "final_data" by subject and label then take the mean for the 66 features per 180 combinations of subject and label.
8. This result is in "final_output.txt".

