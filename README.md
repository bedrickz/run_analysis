### run_analysis.R

This script contains a function `run_analysis()` that performs the following actions on the "UCI HAR Dataset":

#### The `test` data frame
1.  Creates a new data frame called 'test' to hold the focused data from the test set
2.  Finds the mean and standard deviation columns the test data and adds it to the `test` variable
3.  Appends the activity numbers from the test data as a new column in the `test` variable
4.  Appends the subject numbers from the test data as a new column in the `test` variable

#### The `train` data frame
1.  Creates a new data frame called 'train' to hold the focused data from the train set
2.  Finds the mean and standard deviation columns the train data and adds it to the `train` variable
3.  Appends the activity numbers from the train data as a new column in the `train` variable
4.  Appends the subject numbers from the train data as a new column in the `train` variable

The `train` and `test` data frames are then concatinated into a single data table called `full`

The mean of each column per activity per subject is then used to create a data table called `tidy` which is returned as the output of the function.

The resulting columns are:

..."subject" - The id of the subject
..."activity" - the activity the subject is performing
..."tBodyAcc-mean-X"
..."tBodyAcc-mean-Y"          
"tBodyAcc-mean-Z"
"tBodyAcc-std-X"
"tBodyAcc-std-Y"
"tBodyAcc-std-Z"           
"tGravityAcc-mean-X"
"tGravityAcc-mean-Y"
"tGravityAcc-mean-Z"
"tGravityAcc-std-X"        
"tGravityAcc-std-Y"
"tGravityAcc-std-Z"
"tBodyAccJerk-mean-X"
"tBodyAccJerk-mean-Y"      
"tBodyAccJerk-mean-Z"
"tBodyAccJerk-std-X"
"tBodyAccJerk-std-Y"
"tBodyAccJerk-std-Z"       
"tBodyGyro-mean-X"
"tBodyGyro-mean-Y"
"tBodyGyro-mean-Z"
"tBodyGyro-std-X"          
"tBodyGyro-std-Y"
"tBodyGyro-std-Z"
"tBodyGyroJerk-mean-X"
"tBodyGyroJerk-mean-Y"     
"tBodyGyroJerk-mean-Z"
"tBodyGyroJerk-std-X"
"tBodyGyroJerk-std-Y"
"tBodyGyroJerk-std-Z"      
"tBodyAccMag-mean"
"tBodyAccMag-std"
"tGravityAccMag-mean"
"tGravityAccMag-std"       
"tBodyAccJerkMag-mean"
"tBodyAccJerkMag-std"
"tBodyGyroMag-mean"
"tBodyGyroMag-std"         
"tBodyGyroJerkMag-mean"
"tBodyGyroJerkMag-std"
"fBodyAcc-mean-X"
"fBodyAcc-mean-Y"          
"fBodyAcc-mean-Z"
"fBodyAcc-std-X"
"fBodyAcc-std-Y"
"fBodyAcc-std-Z"           
"fBodyAccJerk-mean-X"
"fBodyAccJerk-mean-Y"
"fBodyAccJerk-mean-Z"
"fBodyAccJerk-std-X"       
"fBodyAccJerk-std-Y"
"fBodyAccJerk-std-Z"
"fBodyGyro-mean-X"
"fBodyGyro-mean-Y"         
"fBodyGyro-mean-Z"
"fBodyGyro-std-X"
"fBodyGyro-std-Y"
"fBodyGyro-std-Z"          
"fBodyBodyGyroMag-mean"
"fBodyBodyGyroMag-std"
"fBodyBodyGyroJerkMag-mean"
"fBodyBodyGyroJerkMag-std" 
