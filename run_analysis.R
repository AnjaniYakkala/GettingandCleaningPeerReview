#Read the data
x<-read.table("./X_test.txt",header=FALSE,sep="",colClasses="numeric",fill=T)
x2<-read.table("./X_train.txt",header=FALSE,sep="",colClasses="numeric",fill=T)
x3<-rbind(x,x2)
#Read the activity labels
y<-read.table("./Y_test.txt",header=FALSE,sep="",colClasses="numeric",fill=T)
y2<-read.table("./Y_train.txt",header=FALSE,sep="",colClasses="numeric",fill=T)
y3<-rbind(y,y2)
#Read subjects
s<-read.table("./subject_test.txt",header=FALSE,sep="",colClasses="numeric",fill=T)
s2<-read.table("./subject_train.txt",header=FALSE,sep="",colClasses="numeric",fill=T)
s3<-rbind(s,s2)
#Read features
f<-read.table("./features.txt",header=FALSE,sep="",colClasses="character",fill=T)
#Assign column names
colnames(s3)<-"Subject"
colnames(y3)<-"Activity"
colnames(x3)<-f$V2
#cbind all datasets (test and train) above
fulldataset<-cbind(s3,y3,x3)
#get only the headers with word mean or std
m<-grep("mean",colnames(fulldataset))
std<-grep("std",colnames(fulldataset))
headerlist<-c(m,std)
sorted<-sort(headerlist)

#Only select the columns with the words mean or std
testmeanstd<-fulldataset[,c(1,2,sorted)]

# Rename activity labels with actual descriptions
activity<-c("Walking","WalkingUpStairs","WalkingDownStairs","Sitting","Standing","Laying")
#change the activity number to actual name of the activity
g<-function(l){l=activity[l]}
testmeanstd$Activity<-sapply(testmeanstd$Activity,g)
#summarize by means of each activity for each subject
testmeanstd<- testmeanstd %>% group_by(Subject,Activity) %>% summarize_each(funs(mean))

# Remove the "-" and "()" from the headers
h<-gsub("\\(|\\)|\\-","",colnames(testmeanstd))
# Assign the clean headers as column names 
colnames(testmeanstd)<-h
# Saves a tidydata set to file TidyData.txt with tab delimited

write.table(testmeanstd,"TidyData.txt",sep="\t",row.names=FALSE)

