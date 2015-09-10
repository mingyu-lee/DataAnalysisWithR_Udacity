getwd()
setwd("C:/Users/Mingyu/workspace/3. R/Data Analysis with R_Udacity/Lesson 2")
list.files()
stateInfo <- read.csv("stateData.csv")

View(stateInfo)

stateSubset <- subset(stateInfo, state.region == 1)
head(stateSubset, 2)
dim(stateSubset)

dataSet[ROWS, COLUMNS]

stateInfo[stateInfo$state.region==1, ]

stateSubsetBracket <- stateInfo[stateInfo$state.region ==1, ]
head(stateSubsetBracket)
dim(stateSubset)
