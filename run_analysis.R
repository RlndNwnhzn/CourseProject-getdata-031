## Set the working directory and load the necessary packages
setwd("./Courseproject")
library(dplyr)

## Read the names of the measures from file
headers <- read.table("features.txt",header=FALSE,stringsAsFactors = FALSE)[[2]]

## Read the test set from file and assign the measurement names to the columns
df.test <- read.table("./test/X_test.txt",header=FALSE)
colnames(df.test) <- headers
## Read the activity and subject indicators and assign them to new columns in the data frame 
df.test$activity <- read.table("./test/y_test.txt",header=FALSE)[[1]]
df.test$subject <- read.table("./test/subject_test.txt",header=FALSE)[[1]]

## Do the same for the train set
df.train <- read.table("./train/X_train.txt",header=FALSE)
colnames(df.train) <- headers
df.train$activity <- read.table("./train/y_train.txt",header=FALSE)[[1]]
df.train$subject <- read.table("./train/subject_train.txt",header=FALSE)[[1]]

## Combine the test and train data frames 
df.combine <- rbind(df.test,df.train,make.row.names=FALSE)

## Subset the combined data frame on columns (only means and std's)
subset <- headers[grepl("(mean|std)\\(\\)",headers)]
df.combine <- df.combine[,c(subset,"activity","subject")]

## Tidy the variable names
names(df.combine) <- tolower(gsub("[\\(\\)]","",names(df.combine)))

## Read the activity labels from file and name the columns of the data frame
df.activitylabels <- read.table("./activity_labels.txt",header=FALSE,stringsAsFactors=FALSE)
colnames(df.activitylabels) <- c("activity","activityname")

## Join the combined data frame and the data frame with activity labels, based on the activity indicator
df.combine <- inner_join(df.combine,df.activitylabels)

## Summarize the combined data frame based on grouping by subject and activityname
df.tidy <-
    df.combine %>% 
    group_by(subject,activityname) %>% 
    summarise_each(funs(mean),-activity)

## Convert the character columns to factors
df.tidy$subject <- factor(df.tidy$subject)
df.tidy$activityname <- factor(df.tidy$activityname)

## Write the tidy data frame to disk
write.table(df.tidy,"tidy.txt",row.name=FALSE)