# Variable CodeBook for run_analysis.R #
-------------------------------------------------------------------------------------------------------------------------
## Ver 1.0 - June 20, 2017
-------------------------------------------------------------------------------------------------------------------------

run_analysis.R will create a tidy text file that simply shows the mean time-frequency readings for each activity and measured feature within the UCI HAR Dataset. Standard deviations for each activity and feature are also included.

The dataset is available at the URL below: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Based upon the .txt files in the UCI HAR Dataset .zip, variables in run_analysis.R are as follows:
* `labels` - holds "activity_labels.txt", the label (name) for each activity type
* `features` - holds "features.txt", the label (name) for each tested or trained feature in the participants
* `featuresWanted` - row indices in "features.txt" containing "mean" or "std" in the name 
* `featuresnames` - the corresponding names for each feature in "featuresWanted" based on those from "features.txt"
* `testaction` - holds "y_test.txt", test activities
* `testfeatures` - holds "subject_test.txt", test features
* `testvalue` - holds "X_test.txt", body response measurement in s or Hz
* `test` - data frame storing "testaction", "testfeatures" and "testvalue" into columns
* `trainaction` - holds "y_train.txt", training activites
* `trainfeatures` - holds "subject_train.txt", training features
* `trainvalue` - holds "X_train.txt", body response measurement in s or Hz
* `train` - data.frame storing "trainaction", "trainfeatures" and "trainvalue" into columns
* `newframe` - data.frame that merges test and training data
* `activity.sum` - reduces all rows of $Activity within "newframe", into a factor
* `feature.sum` - reduces all rows of $Features within "newframe", into a factor
* `newframe2` - melted reduction of "newframe" based on "activity.sum" and "feature.sum"
* `newframe2.mean` - converts (casts) "newframe2" into a horizontal-like format while converting all measurement values into means
* `write.csv` - outputs the new data.frame as a .csv, "Activities + Features Mean.csv"


Column name features in the table .txt parallels those found in "features.txt" (refer to the .zip file for the UCI HAR Dataset). Units of measurements are in s and Hz. Refer to "activity_labels.txt" for a list of activity types. 
  
The final write line may be changed to a "write.csv" function to generate a .csv file. 
