### run_analysis.R

This script contains a function `run_analysis()` that performs the following actions on the "UCI HAR Dataset":

#### The `test` data frame
1.  Creates a new data frame called 'test' to hold the summarized data from the test set
2.  Finds the standard deviation of each row in the test data and adds it as a column in the `test` variable
3.  Finds the mean of each record in the test data and adds it as a column in the `test` variable
4.  Appends the activity numbers from the test data as a new column in the `test` variable
5.  Appends the subject numbers from the test data as a new column in the `test` variable

#### The `train` data frame
1.  Creates a new data frame called 'train' to hold the summarized data from the train set
2.  Finds the standard deviation of each row in the train data and adds it as a column in the `train` variable
3.  Finds the mean of each record in the train data and adds it as a column in the `train` variable
4.  Appends the activity numbers from the train data as a new column in the `train` variable
5.  Appends the subject numbers from the train data as a new column in the `train` variable

The `train` and `test` data frames are then concatinated into a single data table called `full`

The average mean and standard deviation per activity per subject is then used to create a data table called `tidy` which is returned as the output of the function.
