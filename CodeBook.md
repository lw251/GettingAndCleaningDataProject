# Getting and Cleaning Data Course Project CodeBook

## Study design
		The raw data is from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
		The web site for the data set is http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
		The detail steps of the analysis are described in README.md.

## Code book
The tidy data set contains 180 measurements and each measurement has 81 features.

- #####subject
	- From 1 to 30.  
		HAR database built from the recordings of 30 subjects performing activities of daily living (ADL).
		
- #####activity
	- Correspond to 6 ADLs.
		- "walking"
		- "walkingupstairs"
		- "walkingdownstairs"
		- "sitting"
		- "standing"
		- "laying"
	
We have 30 subjects and 6 activities, so totally 30 * 6 = 180 unique subject-activity pairs. 

79 features in the tidy data set is mean of 79 mean/std raw features for a subject-activity pair. 

Here is a list of features in tidy set and their corresponding raw features in HAR set. 

Details about raw features such as value range and units etc. are described in HAR data set, I will not repeat here. 

		tbodyaccmeanx		tBodyAcc-mean()-X
		tbodyaccmeany		tBodyAcc-mean()-Y
		tbodyaccmeanz		tBodyAcc-mean()-Z
		tgravityaccmeanx		tGravityAcc-mean()-X
		tgravityaccmeany		tGravityAcc-mean()-Y
		tgravityaccmeanz		tGravityAcc-mean()-Z
		tbodyaccjerkmeanx		tBodyAccJerk-mean()-X
		tbodyaccjerkmeany		tBodyAccJerk-mean()-Y
		tbodyaccjerkmeanz		tBodyAccJerk-mean()-Z
		tbodygyromeanx		tBodyGyro-mean()-X
		tbodygyromeany		tBodyGyro-mean()-Y
		tbodygyromeanz		tBodyGyro-mean()-Z
		tbodygyrojerkmeanx		tBodyGyroJerk-mean()-X
		tbodygyrojerkmeany		tBodyGyroJerk-mean()-Y
		tbodygyrojerkmeanz		tBodyGyroJerk-mean()-Z
		tbodyaccmagmean		tBodyAccMag-mean()
		tgravityaccmagmean		tGravityAccMag-mean()
		tbodyaccjerkmagmean		tBodyAccJerkMag-mean()
		tbodygyromagmean		tBodyGyroMag-mean()
		tbodygyrojerkmagmean		tBodyGyroJerkMag-mean()
		fbodyaccmeanx		fBodyAcc-mean()-X
		fbodyaccmeany		fBodyAcc-mean()-Y
		fbodyaccmeanz		fBodyAcc-mean()-Z
		fbodyaccmeanfreqx		fBodyAcc-meanFreq()-X
		fbodyaccmeanfreqy		fBodyAcc-meanFreq()-Y
		fbodyaccmeanfreqz		fBodyAcc-meanFreq()-Z
		fbodyaccjerkmeanx		fBodyAccJerk-mean()-X
		fbodyaccjerkmeany		fBodyAccJerk-mean()-Y
		fbodyaccjerkmeanz		fBodyAccJerk-mean()-Z
		fbodyaccjerkmeanfreqx		fBodyAccJerk-meanFreq()-X
		fbodyaccjerkmeanfreqy		fBodyAccJerk-meanFreq()-Y
		fbodyaccjerkmeanfreqz		fBodyAccJerk-meanFreq()-Z
		fbodygyromeanx		fBodyGyro-mean()-X
		fbodygyromeany		fBodyGyro-mean()-Y
		fbodygyromeanz		fBodyGyro-mean()-Z
		fbodygyromeanfreqx		fBodyGyro-meanFreq()-X
		fbodygyromeanfreqy		fBodyGyro-meanFreq()-Y
		fbodygyromeanfreqz		fBodyGyro-meanFreq()-Z
		fbodyaccmagmean		fBodyAccMag-mean()
		fbodyaccmagmeanfreq		fBodyAccMag-meanFreq()
		fbodybodyaccjerkmagmean		fBodyBodyAccJerkMag-mean()
		fbodybodyaccjerkmagmeanfreq		fBodyBodyAccJerkMag-meanFreq()
		fbodybodygyromagmean		fBodyBodyGyroMag-mean()
		fbodybodygyromagmeanfreq		fBodyBodyGyroMag-meanFreq()
		fbodybodygyrojerkmagmean		fBodyBodyGyroJerkMag-mean()
		fbodybodygyrojerkmagmeanfreq		fBodyBodyGyroJerkMag-meanFreq()
		tbodyaccstdx		tBodyAcc-std()-X
		tbodyaccstdy		tBodyAcc-std()-Y
		tbodyaccstdz		tBodyAcc-std()-Z
		tgravityaccstdx		tGravityAcc-std()-X
		tgravityaccstdy		tGravityAcc-std()-Y
		tgravityaccstdz		tGravityAcc-std()-Z
		tbodyaccjerkstdx		tBodyAccJerk-std()-X
		tbodyaccjerkstdy		tBodyAccJerk-std()-Y
		tbodyaccjerkstdz		tBodyAccJerk-std()-Z
		tbodygyrostdx		tBodyGyro-std()-X
		tbodygyrostdy		tBodyGyro-std()-Y
		tbodygyrostdz		tBodyGyro-std()-Z
		tbodygyrojerkstdx		tBodyGyroJerk-std()-X
		tbodygyrojerkstdy		tBodyGyroJerk-std()-Y
		tbodygyrojerkstdz		tBodyGyroJerk-std()-Z
		tbodyaccmagstd		tBodyAccMag-std()
		tgravityaccmagstd		tGravityAccMag-std()
		tbodyaccjerkmagstd		tBodyAccJerkMag-std()
		tbodygyromagstd		tBodyGyroMag-std()
		tbodygyrojerkmagstd		tBodyGyroJerkMag-std()
		fbodyaccstdx		fBodyAcc-std()-X
		fbodyaccstdy		fBodyAcc-std()-Y
		fbodyaccstdz		fBodyAcc-std()-Z
		fbodyaccjerkstdx		fBodyAccJerk-std()-X
		fbodyaccjerkstdy		fBodyAccJerk-std()-Y
		fbodyaccjerkstdz		fBodyAccJerk-std()-Z
		fbodygyrostdx		fBodyGyro-std()-X
		fbodygyrostdy		fBodyGyro-std()-Y
		fbodygyrostdz		fBodyGyro-std()-Z
		fbodyaccmagstd		fBodyAccMag-std()
		fbodybodyaccjerkmagstd		fBodyBodyAccJerkMag-std()
		fbodybodygyromagstd		fBodyBodyGyroMag-std()
		fbodybodygyrojerkmagstd		fBodyBodyGyroJerkMag-std()
