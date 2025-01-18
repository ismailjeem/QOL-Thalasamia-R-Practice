# Load packages
library(tidyverse)
library(gtsummary)
library(gt)
library(cardx)

# Load Data 
datades1 <- read.csv("Clean_Data/Thalassemia2_QOL.csv")
#table Association
datades1 |> 
 select(2:9, "Mental_Health_Status")|> 
  tbl_summary(
  by = "Mental_Health_Status"
) |>
 add_p()|>
  bold_p(t = 0.05)|>
  as_gt()|>
  gtsave("Table/table-1-table Association catagorical vs mental health status.docx")
  






#names(datades1)

