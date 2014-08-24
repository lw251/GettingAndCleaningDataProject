# Getting and Cleaning Data Course Project README


The submission includes

	- README.md (this file)
	- CodeBook.md 
	- run_analysis.R
	- tidyData.txt (uploaded separately)

To run the script, put run_analysis.R under the working directory of R. Assume data set folder ("UCI HAR Dataset") is also under working directory.

The script is well documented. It basically follow the 5 steps given by the project. 

1. Merges the training and the test sets to create one data set.
	- Read training and test data sets including corresponding subject and activity data. 
	- Append subject and activity columns to training and testing data separately and then merge together
	- Read feature names from features.txt, append 'Subject' and 'Activity' and use it to set column names.
	
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
		
   - I used grep to select features. 81 features are selected including 'Subject' and 'Activity'. Here is the list.
   
              1   tBodyAcc-mean()-X
              2	tBodyAcc-mean()-Y
              3	tBodyAcc-mean()-Z
              4	tGravityAcc-mean()-X
              5	tGravityAcc-mean()-Y
              6	tGravityAcc-mean()-Z
              7	tBodyAccJerk-mean()-X
              8	tBodyAccJerk-mean()-Y
              9	tBodyAccJerk-mean()-Z
              10	tBodyGyro-mean()-X
              11	tBodyGyro-mean()-Y
              12	tBodyGyro-mean()-Z
              13	tBodyGyroJerk-mean()-X
              14	tBodyGyroJerk-mean()-Y
              15	tBodyGyroJerk-mean()-Z
              16	tBodyAccMag-mean()
              17	tGravityAccMag-mean()
              18	tBodyAccJerkMag-mean()
              19	tBodyGyroMag-mean()
              20	tBodyGyroJerkMag-mean()
              21	fBodyAcc-mean()-X
              22	fBodyAcc-mean()-Y
              23	fBodyAcc-mean()-Z
              24	fBodyAcc-meanFreq()-X
              25	fBodyAcc-meanFreq()-Y
              26	fBodyAcc-meanFreq()-Z
              27	fBodyAccJerk-mean()-X
              28	fBodyAccJerk-mean()-Y
              29	fBodyAccJerk-mean()-Z
              30	fBodyAccJerk-meanFreq()-X
              31	fBodyAccJerk-meanFreq()-Y
              32	fBodyAccJerk-meanFreq()-Z
              33	fBodyGyro-mean()-X
              34	fBodyGyro-mean()-Y
              35	fBodyGyro-mean()-Z
              36	fBodyGyro-meanFreq()-X
              37	fBodyGyro-meanFreq()-Y
              38	fBodyGyro-meanFreq()-Z
              39	fBodyAccMag-mean()
              40	fBodyAccMag-meanFreq()
              41	fBodyBodyAccJerkMag-mean()
              42	fBodyBodyAccJerkMag-meanFreq()
              43	fBodyBodyGyroMag-mean()
              44	fBodyBodyGyroMag-meanFreq()
              45	fBodyBodyGyroJerkMag-mean()
              46	fBodyBodyGyroJerkMag-meanFreq()
              47	tBodyAcc-std()-X
              48	tBodyAcc-std()-Y
              49	tBodyAcc-std()-Z
              50	tGravityAcc-std()-X
              51	tGravityAcc-std()-Y
              52	tGravityAcc-std()-Z
              53	tBodyAccJerk-std()-X
              54	tBodyAccJerk-std()-Y
              55	tBodyAccJerk-std()-Z
              56	tBodyGyro-std()-X
              57	tBodyGyro-std()-Y
              58	tBodyGyro-std()-Z
              59	tBodyGyroJerk-std()-X
              60	tBodyGyroJerk-std()-Y
              61	tBodyGyroJerk-std()-Z
              62	tBodyAccMag-std()
              63	tGravityAccMag-std()
              64	tBodyAccJerkMag-std()
              65	tBodyGyroMag-std()
              66	tBodyGyroJerkMag-std()
              67	fBodyAcc-std()-X
              68	fBodyAcc-std()-Y
              69	fBodyAcc-std()-Z
              70	fBodyAccJerk-std()-X
              71	fBodyAccJerk-std()-Y
              72	fBodyAccJerk-std()-Z
              73	fBodyGyro-std()-X
              74	fBodyGyro-std()-Y
              75	fBodyGyro-std()-Z
              76	fBodyAccMag-std()
              77	fBodyBodyAccJerkMag-std()
              78	fBodyBodyGyroMag-std()
              79	fBodyBodyGyroJerkMag-std()
              80	Subject
              81	Activity   

3. Uses descriptive activity names to name the activities in the data set
	- For 'descriptive', I simply follow the definition as below:
		- All lower case when possible
		- Not have underscores or dots or white spaces
		- Not duplicated
		- Descriptive
	- For activity name, I removed '_' and use low cases. 
	    
4. Appropriately labels the data set with descriptive variable names. 
	- Similar to step 3. For feature names, I removed '_', '(' and ')' etc. and use low cases. 
	- I did not change "t" to "time" or "acc" to "acceleration" etc. since I don't think that's necessary to increase readability. 

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
	- Use melt to melt data and set 'subject' and 'activity' as id. Then use dcast to get mean.

6. Finally, save tidy data set into file using write.table.