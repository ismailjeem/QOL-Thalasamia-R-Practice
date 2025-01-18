#load packages
library(tidyverse)
library(gtsummary)
library(gt)
#load Data
datades1 < -read.csv("Clean_Data/Thalassemia2_QOL.csv")
# clean environment
#rm(list = ls())

# Load packages
library(tidyverse)
library(gtsummary)
library(gt)

# Load Data 
datades1 <- read.csv("Clean_Data/Thalassemia2_QOL.csv")
# demographic character analysis
datades1 |>
 select(1:8)|>
  tab_summary()

library(tidyverse)
library(gtsummary) 
library(gt) 

datades1 <- read.csv("Clean_Data/Thalassemia2_QOL.csv") 

datades1 |> 
  select(1:8) |> 
  tbl_summary(
    statistic = list(
      all_continuous() ~ "{mean} ± ({sd})"
     # all_categorical() ~ "{n} / {N} ({p}%)"
   )) |>
 as_gt()|>
gtsave("Table/table1.docx")

#Table 2. Clinical characteristics of thalassemia patients (N=356).
datades1 |> 
  select(9:17) |>
  tbl_summary(
    statistic = list(
      all_continuous() ~ "{mean} ± ({sd})" 
  ), 
  type = c("Severity" , "Previous_3Months_Transfution", "Splenectomy_Status") 
  ~ "categorical"
)|>
  as_gt()|>
  gtsave("Table/table2.docx")

