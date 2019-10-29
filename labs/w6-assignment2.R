rm(list = ls())
setwd('/users/pgrad/mukhijas/Desktop/DA-Labs/labs/data')
Data <- read.csv("siswave3v4impute3.csv", header=TRUE, sep= ",")
Data
str(Data)
attach(Data)
head(Data)
summary(Data)