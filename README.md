# ReadME for run_analysis.R #
-------------------------------------------------------------------------------------------------------------------------
## Ver 1.0 - June 20, 2017
-------------------------------------------------------------------------------------------------------------------------

run_analysis.R will create a "tidy" text file that simply shows the mean time-frequency readings for each activity and measured feature within the UCI HAR Dataset.zip package. Standard deviations for each activity and feature are also included.

The UCI HAR Dataset.zip package, along with its description of contents, is available through the URL below:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The .zip package will contain several .txt files, including "activity_labels.txt" and "features.txt" at its parent level. run_analysis.R will use these files to generate the column names in its .csv output. 

Two "child" folders within the .zip package, "test" and "train", will then contain the core .csv data through text scripts: "subject_test.txt", "X_test.txt", "y_test.txt", "subject_train.txt", "X_train.txt" and "y_train.txt". run_analysis.R will generate a merged data.frame of these scripts, followed by a melt of the (resulting) data.frame into a table of means for each activity + feature. The output of the final table will be in .csv called "Activity + Feature Mean.csv" in the parent folder ("UCI HAR Dataset").
