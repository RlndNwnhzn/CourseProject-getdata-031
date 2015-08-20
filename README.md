## Getting and Cleaning Data Coursera Course - Project

This repo contains the project for the Getting and Cleaning Data Coursera course:

*  R script (run_analysis.R)
*  Code Book (CodeBook.md)
*  Resulting data set (tidy.txt), also uploaded to the Coursera Website

The R script (run_analysis.R) assumes that the data has been downloaded and unzipped in the working directory. It does the following:

1.  Reads the names of the features from file
2.  Reads the test set from file and assigns the features names (step 1) to the columns
3.  Reads the activity and subject indicators and assigns them to two new columns in the data frame from step 2
4.  Performs steps 2 and 3 for the train set as well
5.  Combines the test and train data frames (step 3 and 4)
6.  Subsets the combined data frame on columns (only means and std's)
7.  Tidies the remaining column names
8.  Reads the activity labels from file
9.  Joins the combined data frame (step 7) and the data frame with activity labels (step 8), based on the activity indicator
10.  Summarizes the combined data frame based on grouping by subject and activityname
11.  Converts the character columns to factors
12.  Writes the tidy data frame to disk
