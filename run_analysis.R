library(data.table)


## Combines the test and train sets into a single table containing
## summarized measurements for each subject and activity
run_analysis <- function() {

        
x_test<- read.table(paste(getwd(), "/UCI HAR Dataset/test/X_test.txt", sep = ""))
y_test<- read.table(paste(getwd(), "/UCI HAR Dataset/test/y_test.txt", sep = ""))
subject_test<- read.table(paste(getwd(), "/UCI HAR Dataset/test/subject_test.txt", sep = ""))
x_train<- read.table(paste(getwd(), "/UCI HAR Dataset/train/X_train.txt", sep = ""))
y_train<- read.table(paste(getwd(), "/UCI HAR Dataset/train/y_train.txt", sep = ""))
subject_train<- read.table(paste(getwd(), "/UCI HAR Dataset/train/subject_train.txt", sep = ""))

## Build a single data frame for the test data
test <- data.frame(rec = 1:nrow(x_test))
## test["std_dev"] <- apply(x_test,1,sd)
## test["mean"] <- rowMeans(x_test)
test["subject"] <- subject_test[1]
test["activity"] <- y_test[1]
test["tBodyAcc-mean-X"]  <- x_test[1]
test["tBodyAcc-mean-Y"]  <- x_test[2]
test["tBodyAcc-mean-Z"]  <- x_test[3]
test["tBodyAcc-std-X"]  <- x_test[4]
test["tBodyAcc-std-Y"]  <- x_test[5]
test["tBodyAcc-std-Z"]  <- x_test[6]
test["tGravityAcc-mean-X"]  <- x_test[41]
test["tGravityAcc-mean-Y"]  <- x_test[42]
test["tGravityAcc-mean-Z"]  <- x_test[43]
test["tGravityAcc-std-X"]  <- x_test[44]
test["tGravityAcc-std-Y"]  <- x_test[45]
test["tGravityAcc-std-Z"]  <- x_test[46]
test["tBodyAccJerk-mean-X"]  <- x_test[81]
test["tBodyAccJerk-mean-Y"]  <- x_test[82]
test["tBodyAccJerk-mean-Z"]  <- x_test[83]
test["tBodyAccJerk-std-X"]  <- x_test[84]
test["tBodyAccJerk-std-Y"]  <- x_test[85]
test["tBodyAccJerk-std-Z"]  <- x_test[86]
test["tBodyGyro-mean-X"]  <- x_test[121]
test["tBodyGyro-mean-Y"]  <- x_test[122]
test["tBodyGyro-mean-Z"]  <- x_test[123]
test["tBodyGyro-std-X"]  <- x_test[124]
test["tBodyGyro-std-Y"]  <- x_test[125]
test["tBodyGyro-std-Z"]  <- x_test[126]
test["tBodyGyroJerk-mean-X"]  <- x_test[161]
test["tBodyGyroJerk-mean-Y"]  <- x_test[162]
test["tBodyGyroJerk-mean-Z"]  <- x_test[163]
test["tBodyGyroJerk-std-X"]  <- x_test[164]
test["tBodyGyroJerk-std-Y"]  <- x_test[165]
test["tBodyGyroJerk-std-Z"]  <- x_test[166]
test["tBodyAccMag-mean"]  <- x_test[201]
test["tBodyAccMag-std"]  <- x_test[202]
test["tGravityAccMag-mean"]  <- x_test[214]
test["tGravityAccMag-std"]  <- x_test[215]
test["tBodyAccJerkMag-mean"]  <- x_test[227]
test["tBodyAccJerkMag-std"]  <- x_test[228]
test["tBodyGyroMag-mean"]  <- x_test[240]
test["tBodyGyroMag-std"]  <- x_test[241]
test["tBodyGyroJerkMag-mean"]  <- x_test[253]
test["tBodyGyroJerkMag-std"]  <- x_test[254]
test["fBodyAcc-mean-X"]  <- x_test[266]
test["fBodyAcc-mean-Y"]  <- x_test[267]
test["fBodyAcc-mean-Z"]  <- x_test[268]
test["fBodyAcc-std-X"]  <- x_test[269]
test["fBodyAcc-std-Y"]  <- x_test[270]
test["fBodyAcc-std-Z"]  <- x_test[271]
test["fBodyAccJerk-mean-X"]  <- x_test[345]
test["fBodyAccJerk-mean-Y"]  <- x_test[346]
test["fBodyAccJerk-mean-Z"]  <- x_test[347]
test["fBodyAccJerk-std-X"]  <- x_test[348]
test["fBodyAccJerk-std-Y"]  <- x_test[349]
test["fBodyAccJerk-std-Z"]  <- x_test[350]
test["fBodyGyro-mean-X"]  <- x_test[424]
test["fBodyGyro-mean-Y"]  <- x_test[425]
test["fBodyGyro-mean-Z"]  <- x_test[426]
test["fBodyGyro-std-X"]  <- x_test[427]
test["fBodyGyro-std-Y"]  <- x_test[428]
test["fBodyGyro-std-Z"]  <- x_test[429]
test["fBodyAccMag-mean"]  <- x_test[503]
test["fBodyAccMag-std"]  <- x_test[504]
test["fBodyBodyAccJerkMag-mean"]  <- x_test[516]
test["fBodyBodyAccJerkMag-std"]  <- x_test[517]
test["fBodyBodyGyroMag-mean"]  <- x_test[529]
test["fBodyBodyGyroMag-std"]  <- x_test[530]
test["fBodyBodyGyroJerkMag-mean"]  <- x_test[542]
test["fBodyBodyGyroJerkMag-std"]  <- x_test[543]


## Build a single data frame for the train data
train <- data.frame(rec = 1:nrow(x_train))
## train["std_dev"] <- apply(x_train,1,sd)
## train["mean"] <- rowMeans(x_train)
train["subject"] <- subject_train[1]
train["activity"] <- y_train[1]
train["tBodyAcc-mean-X"]  <- x_train[1]
train["tBodyAcc-mean-Y"]  <- x_train[2]
train["tBodyAcc-mean-Z"]  <- x_train[3]
train["tBodyAcc-std-X"]  <- x_train[4]
train["tBodyAcc-std-Y"]  <- x_train[5]
train["tBodyAcc-std-Z"]  <- x_train[6]
train["tGravityAcc-mean-X"]  <- x_train[41]
train["tGravityAcc-mean-Y"]  <- x_train[42]
train["tGravityAcc-mean-Z"]  <- x_train[43]
train["tGravityAcc-std-X"]  <- x_train[44]
train["tGravityAcc-std-Y"]  <- x_train[45]
train["tGravityAcc-std-Z"]  <- x_train[46]
train["tBodyAccJerk-mean-X"]  <- x_train[81]
train["tBodyAccJerk-mean-Y"]  <- x_train[82]
train["tBodyAccJerk-mean-Z"]  <- x_train[83]
train["tBodyAccJerk-std-X"]  <- x_train[84]
train["tBodyAccJerk-std-Y"]  <- x_train[85]
train["tBodyAccJerk-std-Z"]  <- x_train[86]
train["tBodyGyro-mean-X"]  <- x_train[121]
train["tBodyGyro-mean-Y"]  <- x_train[122]
train["tBodyGyro-mean-Z"]  <- x_train[123]
train["tBodyGyro-std-X"]  <- x_train[124]
train["tBodyGyro-std-Y"]  <- x_train[125]
train["tBodyGyro-std-Z"]  <- x_train[126]
train["tBodyGyroJerk-mean-X"]  <- x_train[161]
train["tBodyGyroJerk-mean-Y"]  <- x_train[162]
train["tBodyGyroJerk-mean-Z"]  <- x_train[163]
train["tBodyGyroJerk-std-X"]  <- x_train[164]
train["tBodyGyroJerk-std-Y"]  <- x_train[165]
train["tBodyGyroJerk-std-Z"]  <- x_train[166]
train["tBodyAccMag-mean"]  <- x_train[201]
train["tBodyAccMag-std"]  <- x_train[202]
train["tGravityAccMag-mean"]  <- x_train[214]
train["tGravityAccMag-std"]  <- x_train[215]
train["tBodyAccJerkMag-mean"]  <- x_train[227]
train["tBodyAccJerkMag-std"]  <- x_train[228]
train["tBodyGyroMag-mean"]  <- x_train[240]
train["tBodyGyroMag-std"]  <- x_train[241]
train["tBodyGyroJerkMag-mean"]  <- x_train[253]
train["tBodyGyroJerkMag-std"]  <- x_train[254]
train["fBodyAcc-mean-X"]  <- x_train[266]
train["fBodyAcc-mean-Y"]  <- x_train[267]
train["fBodyAcc-mean-Z"]  <- x_train[268]
train["fBodyAcc-std-X"]  <- x_train[269]
train["fBodyAcc-std-Y"]  <- x_train[270]
train["fBodyAcc-std-Z"]  <- x_train[271]
train["fBodyAccJerk-mean-X"]  <- x_train[345]
train["fBodyAccJerk-mean-Y"]  <- x_train[346]
train["fBodyAccJerk-mean-Z"]  <- x_train[347]
train["fBodyAccJerk-std-X"]  <- x_train[348]
train["fBodyAccJerk-std-Y"]  <- x_train[349]
train["fBodyAccJerk-std-Z"]  <- x_train[350]
train["fBodyGyro-mean-X"]  <- x_train[424]
train["fBodyGyro-mean-Y"]  <- x_train[425]
train["fBodyGyro-mean-Z"]  <- x_train[426]
train["fBodyGyro-std-X"]  <- x_train[427]
train["fBodyGyro-std-Y"]  <- x_train[428]
train["fBodyGyro-std-Z"]  <- x_train[429]
train["fBodyAccMag-mean"]  <- x_train[503]
train["fBodyAccMag-std"]  <- x_train[504]
train["fBodyBodyAccJerkMag-mean"]  <- x_train[516]
train["fBodyBodyAccJerkMag-std"]  <- x_train[517]
train["fBodyBodyGyroMag-mean"]  <- x_train[529]
train["fBodyBodyGyroMag-std"]  <- x_train[530]
train["fBodyBodyGyroJerkMag-mean"]  <- x_train[542]
train["fBodyBodyGyroJerkMag-std"]  <- x_train[543]


## Combine test and train into full (as a data table)
full <- data.table(rbind(test, train))

## Build the tidy dataset
## tidy <- full[,list(avg_measurement = mean(mean), avg_deviation = mean(std_dev)),by=list(subject,activity)]
tidy <- full[,lapply(.SD,mean),by=list(subject,activity)]

## Change the numeric activity values to more readable strings
tidy$activity[tidy$activity == 1] <- "WALKING"
tidy$activity[tidy$activity == 2] <- "WALKING_UPSTAIRS"
tidy$activity[tidy$activity == 3] <- "WALKING_DOWNSTAIRS"
tidy$activity[tidy$activity == 4] <- "SITTING"
tidy$activity[tidy$activity == 5] <- "STANDING"
tidy$activity[tidy$activity == 6] <- "LAYING"

## Remove my 'rec' column
tidy[,rec:=NULL]

## Output the dataset
tidy

}