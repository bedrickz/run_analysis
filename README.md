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
