library("readxl")

df <- read_excel("/users/pgrad/mukhijas/Desktop/DA-Labs/labs/data/DT-W4.xlsx")


df_with_X_and_Y_all_groups = data.frame(df)
DT_Model_XY_all_groups <- rpart(Response~., data=df_with_X_and_Y_all_groups, control=rpart.control(minsplit=60, minbucket=30, maxdepth=4 ))
plot(as.party((DT_Model_XY_all_groups)))

df_without_X_all_groups = data.frame(df)
df_without_X_all_groups = within(df_without_X_all_groups, rm(X1, X2, X3, X4, X5, X6, X7))
DT_model_without_X_all_groups <- rpart(Response~., data=df_without_X_all_groups, control=rpart.control(minsplit=60, minbucket=30, maxdepth=4 ))
plot(as.party((DT_model_without_X_all_groups)))

df_without_Y_all_groups = data.frame(df)
df_without_Y_all_groups = within(df_without_Y_all_groups, rm(Y1, Y2, Y3, Y4, Y5, Y6, Y7))
DT_model_without_Y_all_groups <- rpart(Response~., data=df_without_Y_all_groups, control=rpart.control(minsplit=60, minbucket=30, maxdepth=4 ))
plot(as.party((DT_model_without_Y_all_groups)))

df_with_X_and_Y_group_0 = data.frame(df)
df_with_X_and_Y_group_0 = df_with_X_and_Y_group_0[df_with_X_and_Y_group_0$Group == 0,]
DT_Model_XY_group_0 <- rpart(Response~., data=df_with_X_and_Y_group_0, control=rpart.control(minsplit=60, minbucket=30, maxdepth=4 ))
plot(as.party((DT_Model_XY_group_0)))

df_with_X_group_0 = data.frame(df)
df_with_X_group_0 = df_with_X_group_0[df_with_X_group_0$Group == 0,]
DT_Model_X_group_0 <- rpart(Response~., data=df_with_X_group_0, control=rpart.control(minsplit=60, minbucket=30, maxdepth=4 ))
plot(as.party((DT_Model_X_group_0)))

df_with_Y_group_0 = data.frame(df)
df_with_Y_group_0 = df_with_Y_group_0[df_with_Y_group_0$Group == 0,]
DT_Model_Y_group_0 <- rpart(Response~., data=df_with_Y_group_0, control=rpart.control(minsplit=60, minbucket=30, maxdepth=4 ))
plot(as.party((DT_Model_Y_group_0)))


df_with_X_and_Y_group_1 = data.frame(df)
df_with_X_and_Y_group_1 = df_with_X_and_Y_group_1[df_with_X_and_Y_group_1$Group == 0,]
DT_Model_XY_group_1 <- rpart(Response~., data=df_with_X_and_Y_group_1, control=rpart.control(minsplit=60, minbucket=30, maxdepth=4 ))
plot(as.party((DT_Model_XY_group_1)))

df_with_X_group_1 = data.frame(df)
df_with_X_group_1 = df_with_X_group_1[df_with_X_group_1$Group == 0,]
df_with_X_group_1 = within(df_with_X_group_1, rm(Y1, Y2, Y3, Y4, Y5, Y6, Y7))
DT_Model_X_group_1 <- rpart(Response~., data=df_with_X_group_1, control=rpart.control(minsplit=60, minbucket=30, maxdepth=4 ))
plot(as.party((DT_Model_X_group_1)))

df_with_Y_group_1 = data.frame(df)
df_with_Y_group_1 = df_with_Y_group_1[df_with_Y_group_1$Group == 0,]
df_with_Y_group_1 = within(df_with_Y_group_1, rm(X1, X2, X3, X4, X5, X6, X7))
DT_Model_Y_group_1 <- rpart(Response~., data=df_with_Y_group_1, control=rpart.control(minsplit=60, minbucket=30, maxdepth=4 ))
plot(as.party((DT_Model_Y_group_1)))