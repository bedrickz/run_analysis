library(data.table)


## Takes the location of the "UCI HAR Dataset folder" as an input and then
## combines the test and train sets into a single table containing
## summarized measurements for each subject and activity
run_analysis <- function(directory) {

        
x_test<- read.table(paste(directory, "/UCI HAR Dataset/test/X_test.txt", sep = ""))
y_test<- read.table(paste(directory, "/UCI HAR Dataset/test/y_test.txt", sep = ""))
subject_test<- read.table(paste(directory, "/UCI HAR Dataset/test/subject_test.txt", sep = ""))
x_train<- read.table(paste(directory, "/UCI HAR Dataset/train/X_train.txt", sep = ""))
y_train<- read.table(paste(directory, "/UCI HAR Dataset/train/y_train.txt", sep = ""))
subject_train<- read.table(paste(directory, "/UCI HAR Dataset/train/subject_train.txt", sep = ""))

## Build a single data frame for the test data
test <- data.frame(rec = 1:nrow(x_test))
test["std_dev"] <- apply(x_test,1,sd)
test["mean"] <- rowMeans(x_test)
test["activity"] <- y_test[1]
test["subject"] <- subject_test[1]

## Build a single data frame for the train data
train <- data.frame(rec = 1:nrow(x_train))
train["std_dev"] <- apply(x_train,1,sd)
train["mean"] <- rowMeans(x_train)
train["activity"] <- y_train[1]
train["subject"] <- subject_train[1]

## Combine test and train into full (as a data table)
full <- data.table(rbind(test, train))

## Build the tidy dataset
tidy <- full[,list(avg_measurement = mean(mean), avg_deviation = mean(std_dev)),by=list(activity,subject)]

## Output the dataset
tidy

}