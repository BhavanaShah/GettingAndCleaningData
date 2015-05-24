#Getting and Cleaning Data 
# #COURSE PROJECT
# Objective: Create one R script called run_analysis.R that does the following. 
# 1.Merges the training and the test sets to create one data set.
# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive variable names.  
# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


#Add required packages
library(plyr)
library(dplyr)     
library(magrittr)
library(utils)

#--1.Merge the training and the test sets to create one data set.

        # 1.1 Check if files are in working directory
        fileList <- 
        c("X_test.txt", "y_test.txt","subject_test.txt", "X_train.txt","y_train.txt", "subject_train.txt","features.txt", "activity_labels.txt")
      
        fileExist <- TRUE
        wdFiles <- list.files()
        displayList <- NULL
        for( i in 1:length(fileList))
        {
               if( !fileList[i] %in% wdFiles ) 
               {
                       displayList <- c( displayList , fileList[i] ) 
                       fileExist <- FALSE
               }
        }
        if(fileExist == FALSE) 
        {
                print( "Could not find file(s) in the working directory. Exiting the program.")
                print( displayList )
        }  else  {       
                
                print("Please wait, data tidying in progress......")
                #Checked that all required files are in the working directory
                
                # 1.2 Obtain Data from the provided data files
                #-----TEST DATA -----------
                testDataX <- read.table("X_test.txt", header=FALSE, sep="")
                testDataY <- read.table("y_test.txt", header=FALSE, sep="")
                subTest <- read.table("subject_test.txt", header=FALSE, sep="")
                
                #----TRAIN DATA --------------
                trainDataX <-read.table("X_train.txt", header=FALSE, sep="")
                trainDataY <-read.table("y_train.txt", header=FALSE, sep="")
                subTrain <-read.table("subject_train.txt", header=FALSE, sep="")
                
                #----FEATURE LIST--------------
                features<-read.table("features.txt",header=FALSE, sep="", stringsAsFactors = FALSE)
                
                
                #1.3 Appropriately labels the data set with descriptive variable names.
                
                #-----TEST DATA -----------
                colnames(testDataX) <- features$V2
                colnames(testDataY)[1]  <- "Activity"
                colnames(subTest)[1]  <- "SubjectID"
                #----TRAIN DATA --------------
                colnames(trainDataX) <- features$V2
                colnames(trainDataY)[1]  <- "Activity"
                colnames(subTrain)[1]  <- "SubjectID"
                
                #1.4 Combine data
                #-----TEST DATA ----------------
                testDataSet <- cbind(subTest, testDataY)
                testDataSet  <-  cbind(testDataSet, testDataX)
                #----TRAIN DATA ----------------
                trainDataSet <- cbind(subTrain, trainDataY)
                trainDataSet <- cbind(trainDataSet, trainDataX)
                #------ BOTH --------------------
                fullDataSet <- rbind(trainDataSet, testDataSet)
        
                
        # --2.Extract only the measurements on the mean and standard deviation for each measurement - mean() and std()
        #Create char vector with column names        
        cNames <- colnames(fullDataSet)
                
        #Extract the column names using grep
        t <- grep("-mean\\(\\)|-std\\(\\)", cNames, value = TRUE)
        
        #Add first two columns to list of column names
        t <- c("SubjectID", "Activity", t)
                
        #Now subset the data frame using selected column names
        fullDataSet <- fullDataSet[, t]
        
                
        # --3.Add descriptive activity names to name the activities in the data set
        activity <- read.table("activity_labels.txt", header=FALSE, sep="", stringsAsFactors = FALSE)
        
        #Perform mapping for each row. For example: Activity code 1 to change to 'WALKING', and so on...
        mapfrom <- c(1:6)
        mapto <- c(activity$V2)
        fullDataSet$Activity <- mapvalues(fullDataSet$Activity, from=mapfrom, to=mapto)
        
         
        # --5.From the above data set, create a second, independent tidy data set with the average of each variable for each activity and each subject.
        tidy  <-  (fullDataSet %>% group_by(SubjectID, Activity) %>% summarise_each( funs(mean) ))
        
        #Write the data frame to a file
        tidyFile <- write.table(tidy, "tidyResult.txt", row.names = FALSE )
        
        #Let the user know the name of output file
        print( "Tidy data is created. The output is saved as tidyResult.txt, in working directory")
        
        #Read back data to display in excel like format, using View from utils package
        tidyResult <- read.table("tidyResult.txt", header = TRUE)
        View(tidyResult)
        }
#END