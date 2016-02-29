#prepare route for work
if(!file.exists("./data_cleaning")){dir.create("./data_cleaning")}
#download zip file
if(!file.exists("./data_cleaning/UCIHAR.zip")){
download.file(url = fileUrl, destfile = "./data_cleaning/UCIHAR.zip")
    #unzip file
    unzip("./data_cleaning/UCIHAR.zip", exdir = "./data_cleaning")    
    }

# routes for each need file
feature         <- "./data_cleaning/UCI HAR Dataset/features.txt"
activity_labels <- "./data_cleaning/UCI HAR Dataset/activity_labels.txt"
X_train         <- "./data_cleaning/UCI HAR Dataset/train/X_train.txt"
Y_train         <- "./data_cleaning/UCI HAR Dataset/train/y_train.txt"
subject_train   <- "./data_cleaning/UCI HAR Dataset/train/subject_train.txt"
X_test          <- "./data_cleaning/UCI HAR Dataset/test/X_test.txt"
Y_test          <- "./data_cleaning/UCI HAR Dataset/test/y_test.txt"
subject_test    <- "./data_cleaning/UCI HAR Dataset/test/subject_test.txt"

# Load original information from local disk
features <- read.table(feature, colClasses = c("character"))
colNamesActivity<-c("Id", "Activity")
activity_labels <- read.table(activity_labels, col.names = colNamesActivity)
#read train
x_train         <- read.table(X_train)
y_train         <- read.table(Y_train)
subject_train   <- read.table(subject_train)
#read test
x_test          <- read.table(X_test)
y_test          <- read.table(Y_test)
subject_test    <- read.table(subject_test)

#1.-join data set in one for each operation
subject <- rbind(cbind(cbind(x_train, subject_train), y_train), cbind(cbind(x_test, subject_test), y_test))

#put names at columns in activity
names(subject) <- rbind(rbind(features, c(562, "Subject")), c(563, "Id"))[,2]

#2.-Extracts only the measurements on the mean and standard deviation for each measurement. 
mean_std <- subject[,grepl("mean|std|Subject|Id", names(subject))]

#3.-Uses descriptive activity names to name the activities in the data set
mean_std <- join(mean_std, activity_labels, by = "Id", match = "first")
mean_std <- mean_std[,-1]

#4.-Appropriately labels the data set with descriptive variable names. 
names(mean_std) <- gsub('\\(|\\)',"",names(mean_std), perl = TRUE)
names(mean_std) <- make.names(names(mean_std))
# change names for new more clear
names(mean_std) <- gsub('Acc',"Acceleration",names(mean_std))
names(mean_std) <- gsub('GyroJerk',"AngularAcceleration",names(mean_std))
names(mean_std) <- gsub('Gyro',"AngularSpeed",names(mean_std))
names(mean_std) <- gsub('Mag',"Magnitude",names(mean_std))
names(mean_std) <- gsub('^t',"TimeDomain.",names(mean_std))
names(mean_std) <- gsub('^f',"FrequencyDomain.",names(mean_std))
names(mean_std) <- gsub('\\.mean',".Mean",names(mean_std))
names(mean_std) <- gsub('\\.std',".StandardDeviation",names(mean_std))
names(mean_std) <- gsub('Freq\\.',"Frequency.",names(mean_std))
names(mean_std) <- gsub('Freq$',"Frequency",names(mean_std))

#5.-From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
headers<-c("Subject","Activity")
#generate a new data set with average
tidy_data = ddply(mean_std, headers, numcolwise(mean))
#prepare for final file 
destiny_file<-"./data_cleaning/UCI HAR Dataset/tidy data.txt"
#write file
write.table(tidy_data, file = destiny_file)

install.packages("memisc")
library(memisc)
codebook(tidy_data)