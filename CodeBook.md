Getting and Cleaning Data Course Project Code Book

Original Data

1. 'features_info.txt': Shows information about the variables used on the feature vector.
2. 'features.txt': List of all features.
3. 'activity_labels.txt': Links the class labels with their activity name.
4. 'train/X_train.txt': Training set.
5. 'train/y_train.txt': Training labels.
6. 'test/X_test.txt': Test set.
7. 'test/y_test.txt': Test labels.

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 


Final Tidy Data (final_output.txt) Variables

1. subject - identification for who performed the activity
2. label - identification for type of activity
3. mean and standard deviation of the features:-
        a) timeBodyaccelerometermean()-X
        b) timeBodyaccelerometermean()-Y
        c) timeBodyaccelerometermean()-Z
        d) timeBodyaccelerometersd()-X
        e) timeBodyaccelerometersd()-Y
        f) timeBodyaccelerometersd()-Z
        g) timeGravityaccelerometermean()-X
        h) timeGravityaccelerometermean()-Y
        i) timeGravityaccelerometermean()-Z
        j) timeGravityaccelerometersd()-X
        k) timeGravityaccelerometersd()-Y
        l) timeGravityaccelerometersd()-Z
        m) timeBodyaccelerometerJerkmean()-X
        n) timeBodyaccelerometerJerkmean()-Y
        o) timeBodyaccelerometerJerkmean()-Z
        p)timeBodyaccelerometerJerksd()-X
        q) timeBodyaccelerometerJerksd()-Y
        r) timeBodyaccelerometerJerksd()-Z
        s) timeBodygyroscopemean()-X
        t) timeBodygyroscopemean()-Y
        u) timeBodygyroscopemean()-Z
        v) timeBodygyroscopesd()-X
        w) timeBodygyroscopesd()-Y
        x) timeBodygyroscopesd()-Z
        y) timeBodygyroscopeJerkmean()-X
        z) timeBodygyroscopeJerkmean()-Y
        aa) timeBodygyroscopeJerkmean()-Z
        ab) timeBodygyroscopeJerksd()-X
        ac) timeBodygyroscopeJerksd()-Y
        ad) timeBodygyroscopeJerksd()-Z
        ae) timeBodyaccelerometermagnitudemean()
        af) timeBodyaccelerometermagnitudesd()
        ag) timeGravityaccelerometermagnitudemean()
        ah) timeGravityaccelerometermagnitudesd()
        ai) timeBodyaccelerometerJerkmagnitudemean()
        aj) timeBodyaccelerometerJerkmagnitudesd()
        ak) timeBodygyroscopemagnitudemean()
        al) timeBodygyroscopemagnitudesd()
        am) timeBodygyroscopeJerkmagnitudemean()
        an) timeBodygyroscopeJerkmagnitudesd()
        ao) frequencyBodyaccelerometermean()-X
        ap) frequencyBodyaccelerometermean()-Y
        aq) frequencyBodyaccelerometermean()-Z
        ar) frequencyBodyaccelerometersd()-X
        as) frequencyBodyaccelerometersd()-Y
        at) frequencyBodyaccelerometersd()-Z
        au) frequencyBodyaccelerometerJerkmean()-X
        av) frequencyBodyaccelerometerJerkmean()-Y
        aw) frequencyBodyaccelerometerJerkmean()-Z
        ax) frequencyBodyaccelerometerJerksd()-X
        ay) frequencyBodyaccelerometerJerksd()-Y
        az) frequencyBodyaccelerometerJerksd()-Z
        ba) frequencyBodygyroscopemean()-X
        bb) frequencyBodygyroscopemean()-Y
        bc) frequencyBodygyroscopemean()-Z
        bd) frequencyBodygyroscopesd()-X
        be) frequencyBodygyroscopesd()-Y
        bf) frequencyBodygyroscopesd()-Z
        bg) frequencyBodyaccelerometermagnitudemean()
        bh) frequencyBodyaccelerometermagnitudesd()
        bi) frequencybodyaccelerometerJerkmagnitudemean()
        bj) frequencybodyaccelerometerJerkmagnitudesd()
        bk) frequencybodygyroscopemagnitudemean()
        bl) frequencybodygyroscopemagnitudesd()
        bm) frequencybodygyroscopeJerkmagnitudemean()
        bn) frequencybodygyroscopeJerkmagnitudesd()

Transformations
1. grouped data by subject and label then calculated the mean for all activity types
