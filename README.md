# Getting and Cleaning Data

## Course Project

### Project Description
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

### Solution Description
The solution approaches tidying the Samsung data very matter-of-factly:

1. Load in the activity types
2. Load in the features list
3. Load in the test and training datasets
4. Associate the test and training datasets with their acitivty types, features, and subjects
5. Aggregate the data and make the output columns human-readable
6. Return the aggregated data to a comma-delimited file with column headers

As with any programming language, there almost always are more elegant ways to do things.  There was one particular aspect of the Samsung data and R I am not yet comfortable with and that is R's magical way of aligning data.  The subject and activity data that coincides with the test and training "results" data coincides insofar as there are the same number of rows.  Obviously with R, we can therefore simply pump the subject and activity data as vectors straight into new columns alongside the test and training datasets.  I chose instead to apply a row index and merge, as I personally wish to get more comfortable with that approach for using R with databases.  Should one of those datasets be smaller, R will simply cycle from the start of the smallest to continue filling fields with data.  This was simply a design choice.

The script is fully commented for details on each step taken.