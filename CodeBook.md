# Variable Codebook Update for the Human Activity Recognition Dataset #
-------------------------------------------------------------------------------------------------------------------------
## Description of run_analysis.R 		                            Ver 1.0 - June 20, 2017
-------------------------------------------------------------------------------------------------------------------------

The run_analysis code will create a "tidy" text file that simply shows the mean time-frequency readings for each activity and measured feature of the UCI HAR Dataset. Standard deviations for each activity and feature are also included.

The dataset is available from: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Variables in the R file are as follows:
* `labels` - holds "activity_labels.txt"
* `features` - holds "features.txt"
* `featuresWanted` - row indices in "features.txt" containing "mean" or "std" in the name 
* `featuresnames` - the matching names for "featuresWanted", based on those from "features.txt"
* `testaction` - holds "y_test.txt", test activities
* `testfeatures` - holds "subject_test.txt", test features
* `testvalue` - holds "X_test.txt"
* `test` - data frame storing "testaction", "testfeatures" and "testvalue" into columns
* `trainaction` - holds "y_train.txt"
* `trainfeatures` - holds "subject_train.txt"
* `trainvalue` - holds "X_train.txt"
* `train` - data.frame storing "trainaction", "trainfeatures" and "trainvalue" into columns
* `newframe` - data.frame that merges test and training data
* `activity.sum` - reduces all rows of $Activity within "newframe" into a factor
* `feature.sum` - reduces all rows of $Features within "newframe" into a factor
* `newframe2` - melted reduction of "newframe" based on "activity.sum" and "feature.sum"
* `newframe2.mean` - converts (casts) "newframe2" into a horizontal-like format while changing measurements into means
* `write.csv` - outputs the new data.frame as a .csv, "Activities + Features Mean.csv"


Column name features in the .csv parallels those found in "features.txt" (refer to the .zip file for the UCI HAR Dataset). Units of measurements are in s and Hz. Refer to "activity_labels.txt" for a list of activity types. 
  
The final write line may be changed to a generic write.table function to generate a .txt file output. 
