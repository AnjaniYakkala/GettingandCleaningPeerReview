The dataset contains activity about 30 subjects. This data was recorded using smartphone (Samsung Galaxy II) on the waist. 
There are total six activities that are recorded as follows:



1.Walking

2.WalkingUpStairs

3.WalkingDownStairs

4.Sitting

5.Standing

6.Laying



For each activity above, accelerations, velocities were captured using the accelerometer and gyroscope embedded in the smartphone.
The initial dataset provided for the quiz has hundreds of columns, for this exercise only items containing the word mean 
or std in the variable name have been selected. The final tidy data set created contains below information.



- An identifier of the subject who carried out the experiment.
- Its activity label. 
- 79 variables related to average and standard deviations of accelerations and velocities, more details on these variables in the code book




The following files are provided in GitHub:
=========================================

- README.md

- CodeBook.txt

- run_analysis.R (R code used for creating the tidy dataset as per Quiz requirements)

- TidyData.txt (Copy of Tidy dataset created using the R code run_analysis.R)

- Original Dataset files given in the Quiz{("features_info.txt" "features.txt"     
  "Inertial Signals folder" "subject_test.txt"  "subject_train.txt"  "X_test.txt" 
  "X_train.txt" "y_test.txt" "y_train.txt" )}




Please note that this dataset is taken from Coursera Quiz website and has been modified to meet the Quiz requirements. 
For more information about this dataset contact: activityrecognition@smartlab.ws
