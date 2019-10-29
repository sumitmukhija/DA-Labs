
# Read CSV and store in Data. The CSV is separated by ; and has a header.
Data <- read.csv("/users/pgrad/mukhijas/Desktop/DA-Labs/labs/data/DT-Credit.csv", header = TRUE, sep = ";")

# Print dataframe
str(Data)

# c method combines its arguments to form a vector
cols <- c(1:2, 4:10, 12:22, 24:32)

# lapply applies a function over a list. 
# The function factor is used to encode a vector as a factor (the terms ‘category’ and ‘enumerated type’ 
# are also used for factors)
Data[cols] <- lapply(Data[cols], factor)

str(Data)
Data <- Data[,-1]
names(Data)

# database is attached to the R search path. 
attach(Data)
DT_Model <-rpart(RESPONSE~., data=Data, control=rpart.control(minsplit=60, minbucket=30, maxdepth=4 ))
plot(as.party(DT_Model))
print(DT_Model) 
DT_Model2<-rpart(RESPONSE~., data=Data) 
plot(as.party(DT_Model2))
print(DT_Model2$cptable) 
opt <- which.min(DT_Model2$cptable [, "xerror"]) 
cp <- DT_Model2$cptable [opt,"CP"] 
DT_Model_Pruned <- prune(DT_Model2, cp=cp)
plot(as.party(DT_Model_Pruned)) 
RF <- randomForest(RESPONSE~.,data=Data) 
print(RF) 
importance(RF)
varImpPlot(RF)
plot(RF)