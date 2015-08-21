# TidyDataCourseProject
## John Q. Murray
### johnqmurray@gmail.com

Course project files for Getting and Cleaning Data, getdata-031

This project contains an R script called run_analysis.R which performs the following steps:

1. Merges the training and the test sets to create one data set. 

2. Extracts only the measurements on the mean and standard deviation for each measurement.

3. Uses descriptive activity names to name the activities in the data set. 

4. Appropriately labels the data set with descriptive variable names.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

The code associated with each step is identified in comments in the run_analysis.R file. 

The code also examines intermediate data at each step to ensure data quality. 

The output tidy data set is named "tidydata.txt." It can be loaded and examined in R using the following commands, which appear at the end of run_analysis.R:

```{r}
copyofdata <- read.table("tidydata.txt", header = TRUE)
dim(copyofdata)
## expected dimensions: 180, 88
## 180 rows = 30 subjects * 6 activities each 
View(copyofdata)
## data is sorted by subject
```

The code book with descriptions of each measurement available in the file "CodeBook.Rmd".

The data is considered tidy because it follows the guidelines in the Hadley Wickham paper (http://www.jstatsoft.org/v59/i10/paper and related video https://vimeo.com/33727555) and the course discussion topic, "Tidy Data and the Assignment" (https://class.coursera.org/getdata-031/forum/thread?thread_id=113). 

The data meets the key criteria of tidy data:

1. Each variable forms a column. 

2. Each observation forms a row.

3. Each type of observational unit forms a table.

The data also follows the guidelines of providing the fixed variables first (the subject and activity), then the measured variables, each ordered so that related variables are contiguous. In the tidy dataset, related X, Y, and Z values are contiguous.

The Course Project Discussion thread https://class.coursera.org/getdata-031/forum/thread?thread_id=28 identifies several items worth mentioning here: 

1.  This project presents the wide form as described in the rubric as acceptable as tidy data.  As David writes: "The wide or narrow form is tidy. The wording in the rubric has actually been clarified on this point to help people be clear in marking."   

2. XYZ values in the inertial data do not need to be split out further from the inertial data to meet the "each variable forms a column" requirement. As David writes: "Do we need the inertial folder Short answer- no."

3. The requirement is for mean-related or std-related variables. This project took the widest possible view and included all such variables that used Mean or Std in their names. 

