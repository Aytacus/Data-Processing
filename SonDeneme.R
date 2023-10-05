dataset=read.csv('Data.csv')
dataset$X1= ifelse(is.na(dataset$X1),ave(dataset$X1,FUN = function(x) mean(x,na.rm=TRUE)),dataset$X1)
dataset$X2= ifelse(is.na(dataset$X2),ave(dataset$X2,FUN = function(x) mean(x,na.rm=TRUE)),dataset$X2)
set.seed(123)
split= sample.split(dataset$y,SplitRatio = 0.8)
training_set= subset(dataset,split==TRUE)
test_set= subset(dataset,split==FALSE)

training_set[,1:2]= scale(training_set[,1:2])
test_set[,1:2]= scale(test_set[,1:2])
# Bagimli degiskeni de aldim ama dogru mu bilmiyorum!!!
training_set[,3]= scale(training_set[,3])
test_set[,3]=scale(test_set[,3])