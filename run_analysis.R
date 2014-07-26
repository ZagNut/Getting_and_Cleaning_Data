## ---------------------------------------------------------------------
## load in activity types
## ---------------------------------------------------------------------
act_labels <- read.delim(paste(getwd(), "/UCI HAR DataSet/activity_labels.txt", sep=""), sep=" ", header=FALSE, col.names = c("act_num", "Activity"))

## ---------------------------------------------------------------------
## load in features list
## ---------------------------------------------------------------------
features <- read.delim(paste(getwd(), "/UCI HAR DataSet/features.txt", sep=""), sep=" ", header=FALSE, col.names = c("id", "feature"))

## ---------------------------------------------------------------------
## load in the test dataset
## ---------------------------------------------------------------------
## load the test "results" data into test variable
test <- read.table(paste(getwd(), "/UCI HAR Dataset/test/X_test.txt", sep=""), quote="\"");
## set the test data's column names based on feature list vector
colnames(test) <- features$feature;
## apply a row id column to the test data.  this will be used to match rows with the subject and activity
## data file.  we could simply load subject data into an additional column, however R will recycle values
## if the number of rows do not match.
test["id"] <- 1:nrow(test);
## load the test "acivity" data into temporary y_test variable
y_test <- read.table(paste(getwd(), "/UCI HAR Dataset/test/y_test.txt", sep=""), quote="\"");
## give the y_test "activity" data a column name shared with the activity types dataset
colnames(y_test) <- "act_num";
## also, give the y_test "activity" dataset a row id column we'll merge against
y_test["id"] <- 1:nrow(y_test);
## merge the activity types dataset to the y_test "activity" data based on activity number
y_test_label <- merge(act_labels, y_test, by="act_num", all=TRUE);
## now merge the y_test dataset with the test data.  test data now has it's corresponding activity label
## as part of the dataset
test <- merge(y_test_label, test, by="id", all=TRUE);
## free memory of our "temporary" variables we won't need anymore
rm(y_test);
rm(y_test_label);
## now load the test dataset's subject data
subj_test <- read.table(paste(getwd(), "/UCI HAR Dataset/test/subject_test.txt", sep=""), quote="\"");
## give the subject data a nice columnname
colnames(subj_test) <- "subject";
## add a row index to the subject data to merge against
subj_test["id"] <- 1:nrow(subj_test);
## merge the subject data to the test dataset
test <- merge(subj_test, test, by="id", all=TRUE);
## free memory of our subject data
rm(subj_test);

## ---------------------------------------------------------------------
## load in the training dataset
## ---------------------------------------------------------------------
## load the training "results" data into test variable
train <- read.table(paste(getwd(), "/UCI HAR Dataset/train/X_train.txt", sep=""), quote="\"");
## set the training data's column names based on feature list vector
colnames(train) <- features$feature;
## apply a row id column to the training data.  this will be used to match rows with the subject and
## activity data file.
train["id"] <- 1:nrow(train);
## load the training "acivity" data into temporary y_test variable
y_train <- read.table(paste(getwd(), "/UCI HAR Dataset/train/y_train.txt", sep=""), quote="\"");
## give the y_train "activity" data a column name shared with the activity types dataset
colnames(y_train) <- "act_num";
## also, give the y_train "activity" dataset a row id column we'll merge against
y_train["id"] <- 1:nrow(y_train);
## merge the activity types dataset to the y_train "activity" data based on activity number
y_train_label <- merge(act_labels, y_train, by="act_num", all=TRUE);
## now merge the y_train dataset with the training data.  training data now has it's corresponding
## activity label as part of the dataset
train <- merge(y_train_label, train, by="id", all=TRUE);
## free memory of our "temporary" variables we won't need anymore
rm(y_train);
rm(y_train_label);
## now load the training dataset's subject data
subj_train <- read.table(paste(getwd(), "/UCI HAR Dataset/train/subject_train.txt", sep=""), quote="\"");
## give the subject data a nice columnname
colnames(subj_train) <- "subject";
## add a row index to the subject data to merge against
subj_train["id"] <- 1:nrow(subj_train);
## merge the subject data to the training dataset
train <- merge(subj_train, train, by="id", all=TRUE);
## free memory of our subject data
rm(subj_train);
## free memory of our activity dataset; we're done using it.
rm(act_labels);

## ---------------------------------------------------------------------
## combine test and training dataset
## ---------------------------------------------------------------------
## test and training datasets should have identical schemas, so we can simply append (rbind) on with
## the other to have our complete dataset.
data <- rbind(train, test);
## now free memory of our test and training datasets.
rm(test);
rm(train);

## ---------------------------------------------------------------------
## aggregate and tidy the dataset
## ---------------------------------------------------------------------
## grab the current set of column names
columns <- as.vector(features$feature);
## regex the column names for the ones we want to keep
keeper_columns <- columns[grep("(t|f)((Body){1,2}|Gravity)(Gyro|Acc)(Jerk)?(Mag)?-(std|mean)\\(.*", columns)];
## quick prettify the subject column
setnames(data,"subject","Subject");
## reduce the "results" dataset to the columns we want to keep, including the Subject and Activity columns
data <- data.table(data[,c(keeper_columns, "Subject", "Activity")]);
## set the keys for the data table we're aggregating from by Subject and activity type
setkey(data, Subject, Activity);
## aggregate the data by subjhect and activity type
data <- data[,lapply(.SD,mean),by=list(Subject, Activity)];
## free memory of datasets we no longer need
rm(columns);
rm(keeper_columns);
## apply a function to prettify the column names we've derived from the features dataset
features["friendly"]<-apply(features,1,function(x){
	tmp<-"Average";
	if (length(grep(".*Body",x["feature"]))>0) {
		tmp<-paste(tmp,"Body",sep="_");
	} else {
		if (length(grep(".*Gravity",x["feature"]))>0) {
			tmp<-paste(tmp,"Gravity",sep="_");
		}
	};
	if (length(grep(".*Acc",x["feature"]))>0) {
		tmp<-paste(tmp,"Accelerometer",sep="_")
	} else {
		if (length(grep(".*Gyro",x["feature"]))>0) {
			tmp<-paste(tmp,"Gyroscope",sep="_")
		}
	};
	if (length(grep(".*-(X|Y|Z)",x["feature"]))>0) {
		tmp2<-paste(gsub("-(X|Y|Z)","\\1",regmatches(x,regexpr("-(X|Y|Z)",x))),"-Axis",sep="")
		tmp<-paste(tmp,tmp2,sep="_")
	}
	if (length(grep(".*Jerk",x["feature"]))>0) {
		tmp<-paste(tmp,"Jerk",sep="_")
	}
	if (length(grep(".*Mag",x["feature"]))>0) {
		tmp<-paste(tmp,"Magnitude",sep="_")
	}
	if (length(grep(".*std\\(\\)",x["feature"]))>0) {
		tmp<-paste(tmp,"Standard Deviation",sep="_")
	} else {
		if (length(grep(".*mean\\(\\)",x["feature"]))>0) {
			tmp<-paste(tmp,"Mean",sep="_")
		}
	};
	if (substr(x["feature"],1,1)=="t") {
		tmp<-paste(tmp,"(Time)",sep="_")
	} else {
		if (substr(x["feature"],1,1)=="f") {
			tmp<-paste(tmp,"(Frequency)",sep="_")
		}
	};
	return(tmp)
});
## for each column name in our "results" dataset, rename to the prettified version
for(i in colnames(data)) {
	tmp<-features[as.vector(features$feature)==i,];
	setnames(data,as.vector(tmp$feature),as.vector(tmp$friendly));
}
## now free memory of the features dataset and variables we no longer need
rm(features);
rm(tmp);
rm(i);
## ---------------------------------------------------------------------
## return aggregated, tidy dataset
## ---------------------------------------------------------------------
## write out the tidy dataset to disk and free memory of the dataset
write.table(data, file=paste(getwd(),"/tidy.data.txt",sep=""), quote=FALSE, sep=",", row.names=FALSE);
rm(data);