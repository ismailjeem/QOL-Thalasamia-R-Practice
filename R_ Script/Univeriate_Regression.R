# Load packages
library(tidyverse)
library(easystats)
library(gtsummary)
library(gt)
library(cardx)
library(corrplot)
# Load Data 
datades1 <- read.csv("Clean_Data/Thalassemia2_QOL.csv")
#names(datades1)

#impact of marital status on quality of life sf score
#lm(y~x, data = )
uni_lm<-lm(Total_SF_Score~Gender,data=datades1 )

report(uni_lm)

#impat of qol life univeriate logistic regression
#glm(y~x,data = data ,family=)
glm("Mental_Health_Status"~"Gender" , data = datades1, family = "binomial"  )




