library(rpart)
library(partykit)
Data <- read.csv("/users/pgrad/mukhijas/Desktop/DA-Labs/labs/data/DT-Credit.csv", header = TRUE, sep = ";")
str(Data)
attach(Data)
DT_Model <- rpart(RESPONSE~., data=Data, control=rpart.control(minsplit=60, minbucket=30, maxdepth=4 ))
plot(as.party((DT_Model)))
print(DT_Model)

Target = ifelse(RESPONSE == 1, 'Y', 'N')
Data <- data.frame(Data, Target)
str(Data)

New_Data = Data[, -32]
DT_Model_New <- rpart(Target~., data=New_Data, control=rpart.control(minsplit=60, minbucket=30, maxdepth=16 ))
plot(as.party((DT_Model_New)))
print(DT_Model_New)