# Getting and Cleaning Data: Course Project
## Introduction

This repository contains files pertaining to the project course requirements

### Script **run_analysis.R**

This script takes in provided raw data, and creates a tidy dataset as output

Overview of the script:

* Load all required packages
* Check in the working directory if all input data files are available
    * Input Data Files
        * X_test.txt 
        * y_test.txt
        * subject_test.txt
        * X_train.txt
        * y_train.txt
        * subject_train.txt
        * features.txt 
        * activity_labels.txt  
if not, output the list of missing files and exit the program  

* After all input files are verified continue as follows  

* Merge the training and the test sets to create one data set.
    * Read in, the 'test data' files("X_test.txt", "y_test.txt", "subject_test.txt") into data tables
    * Read in, the 'training data' files ("X_train.txt", "y_train.txt", "subject_train.txt") into data tables
    * Read in, the features list from features.txt    
    * Add descriptive feature names to columns
    * Combine all 'test data' table into one
    * Combine all 'train data' table into one
    * Combine above two obtained tables into one

* Extract only the measurements on the mean and standard deviation for each measurement - mean() and std()
* Read from 'activity_labels.txt' and add descriptive activity names to name the activities in the data set
* From the above data set, create a second, independent tidy data set with the average of each variable for each activity and each subject.
* Write the data frame to a file, inform user the name of file, taht will be saved in the working directory
* Read the data frame and display the result 


### CodeBook.md
Codebook describes all the variables in the tidy dataset created by running **'run_analysis.R'** script
