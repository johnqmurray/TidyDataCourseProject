# do all the things
## 1. Merges the training and the test sets to create one data set. 
# clean up the environment to start fresh
rm(list = ls());
## read all the input files
## features.txt - describes the data in x_test, x_train
xcolnames <- read.table("features.txt", stringsAsFactors = FALSE);
xcolnamesdt = data.table(xcolnames);
dim(xcolnames);
dim(xcolnamesdt);
## [1] 561   2
## data for test subjects: X_test.txt, y_test.txt, subject_test.txt
xtest <- read.table("X_test.txt");
dim(xtest);
## 2947  561
ytest <- read.table("y_test.txt");
dim(ytest);
## 2947 1
subtest <- read.table("subject_test.txt");
dim(subtest);
## 2947 1
## data for training subjects: X_train.txt, y_train.txt, subject_train.txt 
xtrain <- read.table("X_train.txt");
dim(xtrain);
## 7352  561
## Y is activity
ytrain <- read.table("y_train.txt");
dim(ytrain);
## 7352 1
subtrain <- read.table("subject_train.txt");
dim(subtrain);
## 7352 1
## combine the measurements data
xtestandtrain <- rbind(xtest, xtrain);
## combine the activities data 
ytestandtrain <- rbind(ytest, ytrain);
## combine the subject data
subtestandtrain <- rbind(subtest, subtrain);
dim(xtestandtrain);
dim(ytestandtrain);
dim(subtestandtrain);
## x data column names 
colnames(xtestandtrain) <- xcolnames$V2;
## prepare to add the activities and subjects
combinedtestandtrain <- xtestandtrain;
## simply add as a new column - sequences unchanged because did not merge
combinedtestandtrain$activity <- ytestandtrain;
combinedtestandtrain$subject <- subtestandtrain;
## now have all data combined with valid column names as provided with dataset
colnames(combinedtestandtrain);
## data quality check
unique(combinedtestandtrain$subject);
unique(combinedtestandtrain$activity);
table(combinedtestandtrain$activity);
# 1    2    3    4    5    6 
# 1722 1544 1406 1777 1906 1944 
table(combinedtestandtrain$subject);
# 1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21 
# 347 302 341 317 302 325 308 281 288 294 316 320 327 323 328 366 368 364 360 354 408 
# 22  23  24  25  26  27  28  29  30 
# 321 372 381 409 392 376 382 344 383 
## step 2
## df combinedtestandtrain is 10299 x 563 
## df xcolnamesmeanstd is 88x2 - V1 is col index number in combinedtestandtrain, V2 is column names - not in sequence! 
## should also include activity and subject - columns 562 and 563
## install.packages("data.table");
## library(data.table);
# read in the features which will be used as column names
xcolnames <- read.table("features.txt", stringsAsFactors = FALSE);
# need data.table to be able to use %like%
xcolnamesdt = data.table(xcolnames);
# data quality check 
dim(xcolnames);
dim(xcolnamesdt);
## should be: [1] 561   2
## now contains all the column numbers we want to keep
colnames(xcolnamesdt);
# filter and keep only the mean and std values
xcolnamesmeanstd <- xcolnamesdt[V2 %like% "mean"];
xcolnamesmeanstd <- rbind(xcolnamesmeanstd, xcolnamesdt[V2 %like% "Mean"]);
xcolnamesmeanstd <- rbind(xcolnamesmeanstd, xcolnamesdt[V2 %like% "std"]);
xcolnamesmeanstd <- rbind(xcolnamesmeanstd, xcolnamesdt[V2 %like% "Std"])
## now winnow down to only the columns that match these names
keepers <- combinedtestandtrain[, xcolnamesmeanstd$V1];
dim(keepers);
colnames(keepers);
## activity, subject not in the input file - have to add 
keepers$activity <- ytestandtrain;
keepers$subject <- subtestandtrain;
dim(keepers);
table(keepers$activity);
## 1    2    3    4    5    6 
## 1722 1544 1406 1777 1906 1944 
table(keepers$subject);
## 
## 3. Uses descriptive activity names to name the activities in the data set. 
## Step 3 - activities
## six activities: 
## 1 WALKING
## 2 WALKING_UPSTAIRS
## 3 WALKING_DOWNSTAIRS
## 4 SITTING
## 5 STANDING
## 6 LAYING
keepers$activity[keepers$activity == 1] <- "WALKING"
keepers$activity[keepers$activity == 2] <- "WALKING_UPSTAIRS"
keepers$activity[keepers$activity == 3] <- "WALKING_DOWNSTAIRS"
keepers$activity[keepers$activity == 4] <- "SITTING"
keepers$activity[keepers$activity == 5] <- "STANDING"
keepers$activity[keepers$activity == 6] <- "LAYING"
table(keepers$activity);
# LAYING            SITTING           STANDING            WALKING WALKING_DOWNSTAIRS   WALKING_UPSTAIRS 
# 1944               1777               1906               1722               1406               1544
## 4. Appropriately labels the data set with descriptive variable names.
# step 4
#  Appropriately labels the data set with descriptive variable names.
# t -> Time
# f -> Frequency
# acc -> Accelerometer
# gyro -> Gyroscope
xcolnamesmeanstd$V2 <- gsub("Acc", "Accelerometer", xcolnamesmeanstd$V2);
xcolnamesmeanstd$V2 <- gsub("^t", "Time", xcolnamesmeanstd$V2);
xcolnamesmeanstd$V2 <- gsub("Freq", "Frequency", xcolnamesmeanstd$V2);
xcolnamesmeanstd$V2 <- gsub("^f", "Frequency", xcolnamesmeanstd$V2);
xcolnamesmeanstd$V2 <- gsub("std", "StandardDeviation", xcolnamesmeanstd$V2);
xcolnamesmeanstd$V2 <- gsub("Mag", "Magnitude", xcolnamesmeanstd$V2);
xcolnamesmeanstd$V2 <- gsub("angle.t", "angle.Time", xcolnamesmeanstd$V2);
xcolnamesmeanstd$V2 <- gsub("BodyBody", "Body", xcolnamesmeanstd$V2);  ## cleanup
xcolnamesmeanstd$V2 <- gsub("Gyro", "Gyroscope", xcolnamesmeanstd$V2);
xcolnamesmeanstd$V2 <- gsub("\\(\\)", "", xcolnamesmeanstd$V2);  ## cleanup
colnames(keepers) <- xcolnamesmeanstd$V2
## restore the last two which we just wiped out
colnames(keepers)[length(colnames(keepers))-1] <- "activity"
colnames(keepers)[length(colnames(keepers))] <- "subject"
colnames(keepers);
savedcolnames <- colnames(keepers);
length(savedcolnames)
## 88
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
## create function to loop through each valid combination of subject, activity 
## expect to end up with 30 subjects * 6 activities = 180 such combinations
getaverages <- function() 
{
    ## rm(myoutput, output)
    validsubjects <- unique(keepers$subject)  ## list of all states in the data; state is in column 7
    validactivities <- unique(keepers$activity)
    firsttimeflag <- TRUE
    output <- data.frame(1, 1:88)
    ## colnames(output) <- savedcolnames
    for (mysubject in validsubjects$V1)
    {
        for (myactivity in validactivities$V1)
        {
            ## get only those rows that match the subject and activity
            myoutput <- data.frame(1, 1:88)
            temp <-  subset(keepers, subject==mysubject & activity==myactivity, select = c(-87,-88))
            ## calculate the mean for all measurements in this {subject, activity} pair
            for (i in 1:86)
            {
                myoutput[1,i] <- c(mean(temp[,i]) )
            }
            ## add the unique {subject, activity} pair to this row
            myoutput[1,87] = myactivity
            myoutput[1,88] = mysubject
            ## now add this row to the overall output
            if (firsttimeflag == TRUE)
            {
                output <- myoutput[1,] 
                firsttimeflag <- FALSE
            }
            else 
            {
                output <- rbind(output, myoutput[1,])
            }
        }
    }
    ## save the output - 180 rows x 88 columns
    colnames(output) <- savedcolnames
    ## we are going to suppress colnames anyway...
    ## last statement is return value
    output
}
myfinaloutput <- getaverages();
reorg <- subset(myfinaloutput, select = c(88, 87, 1:86))
dim(reorg)
## [1] 180  88
colnames(reorg)
## shows final names
reorg2 <- reorg[order(reorg$subject),]
dim(reorg2)
## [1] 180  88
head(reorg2)
write.table(reorg2, "tidydata.txt", row.names=FALSE)
copyofdata <- read.table("tidydata.txt", header = TRUE)
dim(copyofdata)
## 180  88
View(copyofdata)
## 


