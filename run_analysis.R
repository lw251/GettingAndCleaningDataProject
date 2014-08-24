run_analysis <- function() {
    #######################################################################################
    ##    Merges the training and the test sets to create one data set.
    #######################################################################################
    
    ## Read training and test data sets
    training <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
    testing <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
    
    trainingSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)
    testingSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)
    
    trainingActivity <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE)
    testingActivity <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE)
    
    ## Append subject and activity columns to training and testing data separately
    ## and then merge together
    trainingData <- cbind(cbind(training, trainingSubject), trainingActivity)
    testingData <- cbind(cbind(testing, testingSubject), testingActivity)
    
    data <- rbind(trainingData, testingData)
    
    ## Add header 
    features <- read.table("./UCI HAR Dataset/features.txt", header=FALSE)
    colnames(data) <- c(lapply(features[, 2], as.character), "Subject", "Activity")
    
    
    #######################################################################################
    ##    Extracts only the measurements on the mean and standard deviation for each measurement. 
    #######################################################################################
    selectedFeatures <- c(grep("-mean()", features[,2], value=TRUE), grep("std()", features[,2], value=TRUE), "Subject", "Activity")
    filteredData <- data[, selectedFeatures]
    
    #######################################################################################
    ##    Uses descriptive activity names to name the activities in the data set
    #######################################################################################
    filteredData$Activity[filteredData$Activity == 1] <- "walking"
    filteredData$Activity[filteredData$Activity == 2] <- "walkingupstairs"
    filteredData$Activity[filteredData$Activity == 3] <- "walkingdownstairs"
    filteredData$Activity[filteredData$Activity == 4] <- "sitting"
    filteredData$Activity[filteredData$Activity == 5] <- "standing"
    filteredData$Activity[filteredData$Activity == 6] <- "laying"
    
    #######################################################################################
    ##    Appropriately labels the data set with descriptive variable names. 
    #######################################################################################
    columnNames <- colnames(filteredData)
    colnames(filteredData) <- tolower(gsub("-|\\()", "", columnNames))
    
    #######################################################################################
    ##    Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    #######################################################################################
    meltData <- melt(filteredData, id=c("subject", "activity"))
    tidyData <- dcast(meltData, subject + activity ~ variable, mean)
    
    #######################################################################################
    ##    Save final tidy data set into file
    #######################################################################################
    write.table(tidyData, "tidyData.txt", row.names=FALSE, col.names=TRUE)
}