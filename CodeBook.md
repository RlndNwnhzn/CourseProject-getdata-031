## Code Book

### Introduction

This is an overview of the data fields in the tidy data set. The tidy data set is a summarized version of the Human Activity Recognition Using Smartphones Dataset:

**  the observations of the original data set are summarized based on subject and activity, averaging the measurements
**  only the mean values and the standard deviations of the signals are kept in the new data set

For each record it is provided:

*  subject and activity name
*  mean of time domain signals (prefix 't'), triaxel (suffix 'x', 'y' and 'z')
*  standard deviation of time domain signals (prefix 't'), triaxel (suffix 'x', 'y' and 'z')
*  mean of frequency domain signals (prefix 'f'), triaxel (suffix 'x', 'y' and 'z')
*  standard deviation of frequency domain signals (prefix 'f'), triaxel (suffix 'x', 'y' and 'z')

There are six activities:

*  WALKING
*  WALKING_UPSTAIRS
*  WALKING_DOWNSTAIRS
*  SITTING
*  STANDING
*  LAYING


### Detailed variable description

#### Factors (identifiers)

*  subject (30 levels) - ID of the test subject
*  activityname (6 levels) - activity performed by the test subject when the measurements were taken


#### Numeric variables (measurements)

*  tbodyacc-mean-x
*  tbodyacc-mean-y
*  tbodyacc-mean-z
*  tbodyacc-std-x
*  tbodyacc-std-y
*  tbodyacc-std-z
*  tgravityacc-mean-x
*  tgravityacc-mean-y
*  tgravityacc-mean-z
*  tgravityacc-std-x
*  tgravityacc-std-y
*  tgravityacc-std-z
*  tbodyaccjerk-mean-x
*  tbodyaccjerk-mean-y
*  tbodyaccjerk-mean-z
*  tbodyaccjerk-std-x
*  tbodyaccjerk-std-y
*  tbodyaccjerk-std-z
*  tbodygyro-mean-x
*  tbodygyro-mean-y
*  tbodygyro-mean-z
*  tbodygyro-std-x
*  tbodygyro-std-y
*  tbodygyro-std-z
*  tbodygyrojerk-mean-x
*  tbodygyrojerk-mean-y
*  tbodygyrojerk-mean-z
*  tbodygyrojerk-std-x
*  tbodygyrojerk-std-y
*  tbodygyrojerk-std-z
*  tbodyaccmag-mean
*  tbodyaccmag-std
*  tgravityaccmag-mean
*  tgravityaccmag-std
*  tbodyaccjerkmag-mean
*  tbodyaccjerkmag-std
*  tbodygyromag-mean
*  tbodygyromag-std
*  tbodygyrojerkmag-mean
*  tbodygyrojerkmag-std
*  fbodyacc-mean-x
*  fbodyacc-mean-y
*  fbodyacc-mean-z
*  fbodyacc-std-x
*  fbodyacc-std-y
*  fbodyacc-std-z
*  fbodyaccjerk-mean-x
*  fbodyaccjerk-mean-y
*  fbodyaccjerk-mean-z
*  fbodyaccjerk-std-x
*  fbodyaccjerk-std-y
*  fbodyaccjerk-std-z
*  fbodygyro-mean-x
*  fbodygyro-mean-y
*  fbodygyro-mean-z
*  fbodygyro-std-x
*  fbodygyro-std-y
*  fbodygyro-std-z
*  fbodyaccmag-mean
*  fbodyaccmag-std
*  fbodybodyaccjerkmag-mean
*  fbodybodyaccjerkmag-std
*  fbodybodygyromag-mean
*  fbodybodygyromag-std
*  fbodybodygyrojerkmag-mean
*  fbodybodygyrojerkmag-std