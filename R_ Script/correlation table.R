# Load packages
library(tidyverse)
library(easystats)
library(gtsummary)
library(gt)
library(cardx)
library(corrplot)
# Load Data 
datades1 <- read.csv("Clean_Data/Thalassemia2_QOL.csv")
#table correlation
#names(datades1)
# select numeric variable for correlation
numericdata2<-datades1|> 
  select(18:28)

#perform correlation between two variables
cor(numericdata2$Physical_Functioning, numericdata2$Total_SF_Score)
#perform_correlation_test
corr_test<- cor.test(numericdata2$Physical_Functioning, numericdata2$Total_SF_Score)
report(corr_test)

#correlation matrix
results<- correlation(numericdata2)|>
    summary()
results |>
  summary(redundant= TRUE)|>
   plot()

str(results)
#names(numericdata2)
