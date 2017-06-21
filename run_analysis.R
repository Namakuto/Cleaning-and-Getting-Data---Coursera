labels<-read.table("activity_labels.txt") # Just to remember which activities are which...
features<-read.table("features.txt") # Get feature names

features[,2]<-as.character(features[,2])
featuresWanted <- grep(".*mean.*|.*std.*", features[,2])

featuresnames <- features[featuresWanted,2]
featuresnames <- gsub('-mean', 'Mean', featuresnames)
featuresnames <- gsub('-std', 'Std', featuresnames)
featuresnames <- gsub('[()-]', '', featuresnames)
  
# TEST
testaction<-read.table(file="./test/y_test.txt") # The actions: Walking, running, etc..
testfeatures<-read.table(file="./test/subject_test.txt") # The feature being tested: t of body acc, etc.
testvalue<-read.table(file="./test/X_test.txt")[featuresWanted] # Measurements on the test feature
test<- cbind(testaction, testfeatures, testvalue) # data.frame with only Mean and Sd values

# TRAINING
trainaction<-read.table(file="./train/y_train.txt") # The actions: Walking, running, etc..
trainfeatures<-read.table(file="./train/subject_train.txt") # The feature being tested: t of body acc, etc.
trainvalue<-read.table(file="./train/X_train.txt")[featuresWanted] # Measurements on the train feature
train<-cbind(trainaction, trainfeatures, trainvalue) # data.frame with only Mean and Sd values

newframe<-rbind(test,train)

colnames(newframe)[c(1,2)] <-c("Activity", "Feature")
colnames(newframe)[-c(1,2)] <-featuresnames

library(reshape2) #----------------------------------------------- PART 5

activity.sum<-factor(newframe$Activity, levels=labels$V1, labels=labels$V2)
feature.sum<-as.factor(newframe$Feature)

newframe2<-melt(newframe, id.vars =c("Activity", "Feature")) # Left side; the individual rows
newframe2.mean<-dcast(newframe2, Activity+Feature~variable, fun.aggregate = mean)

write.csv(newframe2.mean, file="Activites + Features Mean.csv", quote=FALSE, row.names = TRUE)
