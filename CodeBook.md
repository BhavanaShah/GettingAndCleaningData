## **Code Book for Getting and Cleaning Data Course Project**  
#### Author: Bhavana Shah
#### Date: 05/24/2015  
## Project Description
##### The raw data was collected from the study of accelerometers from the Samsung Galaxy S smartphone. The goal of the project is to prepare tidy data that can be used for later analysis 

## Collection of the raw data
The data for the project obtained from: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


## Creating the tidy datafile
##### The raw data files are transformed into tidy data with steps as follows:
1. Combine the test data tables (columns) to create a single table  
2. Combine the train data tables (columns) to create a single table  
3. Combine the tables(rows) from 1 and 2 to create one dataset, so that test and training data are together  
4. Add descriptive names to the columns
5. Extract the mean and standard deviation columns
6. Add descriptive names to Activities (rows)
7. Summarize data set to get average of each variable for each activity and each subject


##### The tidy data file 'tidyResult.txt', obtained after executing **run_analysis.R** contains following information
### Description of the variables in the tidyResult.txt file

 - Dimension: 180 observation rows (30 participants X 6 Activities); 68 variable Columns (column1: SubjectID, Column2: Activity, 3:68 numeric data )

 - The numeric data is mean/average of each variable for each activity and each subject
 
##### **Units**

    * Acceleration Units: 'g's (gravity of earth -> 9.80665 m/seg2)
    * Gyroscope Units: rad/seg 
    
##### **Variables**  

* Column: 1    
    * Variable: SubjectID
    * Variable Type: integer
    * Values: 1-30
    * Description: These are participant IDs and there were 30 participants in the conducted study
 
* Column: 2    
    * Variable: Activity
    * Variable Type: character
    * Values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
    * Description: These are 6 activites each participant performed in the conducted study

* Column: 3   
    * Variable: tBodyAcc-mean()-X
    * Variable Type: numeric 
    * Values: calculated mean
    * Description: Mean of Body Linear Acceleration (X-axis) values derived in time 

* Column: 4   
    * Variable: tBodyAcc-mean()-Y
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Body Linear Acceleration (Y-axis) values derived in time

* Column: 5   
    * Variable: tBodyAcc-mean()-Z
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Body Linear Acceleration (Z-axis) values derived in time

* Column: 6   
    * Variable: tBodyAcc-std()-X
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Body Linear Acceleration (X-axis) values derived in time

* Column: 7   
    * Variable: tBodyAcc-std()-Y
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Body Linear Acceleration (Y-axis) values derived in time

* Column: 8   
    * Variable: tBodyAcc-std()-Z
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Body Linear Acceleration (Z-axis) values derived in time

* Column: 9   
    * Variable: tGravityAcc-mean()-X
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Gravity Linear Acceleration (X-axis) values derived in time

* Column: 10   
    * Variable: tGravityAcc-mean()-Y
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Gravity Linear Acceleration (Y-axis) values derived in time

* Column: 11   
    * Variable: tGravityAcc-mean()-Z
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Gravity Linear Acceleration (Z-axis)  values derived in time

* Column: 12   
    * Variable: tGravityAcc-std()-X
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Gravity Linear Acceleration (X-axis) values derived in time

* Column: 13   
    * Variable: tGravityAcc-std()-Y
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Gravity Linear Acceleration (Y-axis) values derived in time

* Column: 14   
    * Variable: tGravityAcc-std()-Z
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Gravity Linear Acceleration (Z-axis) values derived in time

* Column: 15   
    * Variable: tBodyAccJerk-mean()-X
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Jerk Body Linear Acceleration (X-axis) values derived in time

* Column: 16   
    * Variable: tBodyAccJerk-mean()-Y
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Jerk Body Linear Acceleration (Y-axis) values derived in time

* Column: 17   
    * Variable: tBodyAccJerk-mean()-Z
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Jerk Body Linear Acceleration (Z-axis) values derived in time

* Column: 18   
    * Variable: tBodyAccJerk-std()-X
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Jerk Body Linear Acceleration (X-axis) values derived in time

* Column: 19   
    * Variable: tBodyAccJerk-std()-Y
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Jerk Body Linear Acceleration (Y-axis) values derived in time

* Column: 20   
    * Variable: tBodyAccJerk-std()-Z
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Jerk Body Linear Acceleration (Z-axis) values derived in time

* Column: 21   
    * Variable: tBodyGyro-mean()-X
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Body Angular Velocity (X-axis) values derived in time

* Column: 22   
    * Variable: tBodyGyro-mean()-Y
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Body Angular Velocity (Y-axis) values derived in time

* Column: 23   
    * Variable: tBodyGyro-mean()-Z
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Body Angular Velocity (Z-axis) values derived in time

* Column: 24   
    * Variable: tBodyGyro-std()-X
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Body Angular Velocity (X-axis) values derived in time

* Column: 25   
    * Variable: tBodyGyro-std()-Y
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Body Angular Velocity (Y-axis) values derived in time

* Column: 26   
    * Variable: tBodyGyro-std()-Z
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Body Angular Velocity (Z-axis) values derived in time

* Column: 27   
    * Variable: tBodyGyroJerk-mean()-X
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Jerk Body Angular Velocity (X-axis) values derived in time

* Column: 28   
    * Variable: tBodyGyroJerk-mean()-Y
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Jerk Body Angular Velocity (Y-axis) values derived in time

* Column: 29   
    * Variable: tBodyGyroJerk-mean()-Z
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Jerk Body Angular Velocity (Z-axis) values derived in time

* Column: 30   
    * Variable: tBodyGyroJerk-std()-X
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Jerk Body Angular Velocity (X-axis) values derived in time

* Column: 31   
    * Variable: tBodyGyroJerk-std()-Y
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Jerk Body Angular Velocity (Y-axis) values derived in time

* Column: 32   
    * Variable: tBodyGyroJerk-std()-Z
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Jerk Body Angular Velocity (Z-axis) values derived in time

* Column: 33   
    * Variable: tBodyAccMag-mean()
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Magnitude of Body Linear Acceleration values derived in time

* Column: 34   
    * Variable: tBodyAccMag-std()
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Magnitude of Body Linear Acceleration values derived in time

* Column: 35   
    * Variable: tGravityAccMag-mean()
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Magnitude of Gravity Linear Acceleration values derived in time

* Column: 36   
    * Variable: tGravityAccMag-std()
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Magnitude of Gravity Linear Acceleration values derived in time
 
* Column: 37   
    * Variable: tBodyAccJerkMag-mean()
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Magnitude of Jerk Body Linear Acceleration values derived in time

* Column: 38   
    * Variable: tBodyAccJerkMag-std()
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Magnitude of Jerk Body Linear Acceleration values derived in time

* Column: 39   
    * Variable: tBodyGyroMag-mean()
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Magnitude of Body Angular Velocity values derived in time

* Column: 40   
    * Variable: tBodyGyroMag-std()
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Magnitude of Body Angular Velocity values derived in time
 
* Column: 41   
    * Variable: tBodyGyroJerkMag-mean()
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Magnitude of Jerk Body Angular Velocity values derived in time

* Column: 42   
    * Variable: tBodyGyroJerkMag-std()
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Magnitude of Jerk Body Angular Velocity values derived in time

* Column: 43   
    * Variable: fBodyAcc-mean()-X
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Body Linear Acceleration (X-axis) values derived in Frequency domain

* Column: 44   
    * Variable: fBodyAcc-mean()-Y
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Body Linear Acceleration (Y-axis) values derived in Frequency domain

* Column: 45   
    * Variable: fBodyAcc-mean()-Z
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Body Linear Acceleration (Z-axis) values derived in Frequency domain

* Column: 46   
    * Variable: fBodyAcc-std()-X
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Body Linear Acceleration (X-axis) values derived in Frequency domain

* Column: 47   
    * Variable: fBodyAcc-std()-Y
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Body Linear Acceleration (Y-axis) values derived in Frequency domain

* Column: 48   
    * Variable: fBodyAcc-std()-Z
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Body Linear Acceleration (Z-axis) values derived in Frequency domain

* Column: 49    
    * Variable: fBodyAccJerk-mean()-X
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Jerk Body Linear Acceleration (X-axis) values derived in Frequency domain

* Column: 50   
    * Variable: fBodyAccJerk-mean()-Y
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Jerk Body Linear Acceleration (Y-axis) values derived in Frequency domain

* Column: 51   
    * Variable: fBodyAccJerk-mean()-Z
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Jerk Body Linear Acceleration (Z-axis) values derived in Frequency domain

* Column: 52   
    * Variable: fBodyAccJerk-std()-X
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Jerk Body Linear Acceleration (X-axis) values derived in Frequency domain

* Column: 53   
    * Variable: fBodyAccJerk-std()-Y
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Jerk Body Linear Acceleration (Y-axis) values derived in Frequency domain

* Column: 54   
    * Variable: fBodyAccJerk-std()-Z
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: JStandard deviation of erk Body Linear Acceleration (Z-axis) values derived in Frequency domain
          
* Column: 55 
    * Variable: fBodyGyro-mean()-X
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Body Angular Velocity (X-axis) values derived in Frequency domain

* Column: 56   
    * Variable: fBodyGyro-mean()-Y
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Body Angular Velocity (Y-axis) values derived in Frequency domain

* Column: 57   
    * Variable: fBodyGyro-mean()-Z
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Body Angular Velocity (Z-axis) values derived in Frequency domain

* Column: 58   
    * Variable: fBodyGyro-std()-X
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Body Angular Velocity (X-axis) values derived in Frequency domain

* Column: 59   
    * Variable: fBodyGyro-std()-Y
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Body Angular Velocity (Y-axis) values derived in Frequency domain

* Column: 60   
    * Variable: fBodyGyro-std()-Z
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Body Angular Velocity (Z-axis) values derived in Frequency domain

* Column: 61   
    * Variable: fBodyAccMag-mean()
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Magnitude of Body Linear Acceleration values derived in Frequency domain

* Column: 62   
    * Variable: fBodyAccMag-std()
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Magnitude of Body Linear Acceleration values derived in Frequency domain
 
* Column: 63   
    * Variable: fBodyBodyAccJerkMag-mean()
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Magnitude of Jerk Body Linear Acceleration values derived in Frequency domain

* Column: 64   
    * Variable: fBodyBodyAccJerkMag-std()
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Magnitude of Jerk Body Linear Acceleration values derived in Frequency domain

* Column: 65   
    * Variable: fBodyBodyGyroMag-mean()
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Magnitude of Body Angular Velocity values derived in Frequency domain

* Column: 66   
    * Variable: fBodyBodyGyroMag-std()
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Magnitude of Body Angular Velocity values derived in Frequency domain
 
* Column: 67   
    * Variable: fBodyBodyGyroJerkMag-mean()
    * Variable Type: numeric
    * Values: calculated mean
    * Description: Mean of Magnitude of Jerk Body Angular Velocity values derived in Frequency domain

* Column: 68   
    * Variable: fBodyBodyGyroJerkMag-std()
    * Variable Type: numeric
    * Values: calculated Standard deviation mean
    * Description: Standard deviation of Magnitude of Jerk Body Angular Velocity values derived in Frequency domain





