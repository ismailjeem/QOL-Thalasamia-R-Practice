# Load packages
library(tidyverse)
library(easystats)
library(gtsummary)
library(gt)
library(cardx)

# Load Data 
datades1 <- read.csv("Clean_Data/Thalassemia2_QOL.csv")
#names(datades1)
#perform_t_test
difference_test<- t.test(datades1 $Total_SF_Score ~ datades1$Gender)

#report
report(difference_test)
#quality_of_life_difference_By_Gender 2 group
datades1 |> 
   select(18:28,"Gender") |> 
   tbl_summary(
         by = "Gender",
         type = everything()~ "continuous",
         statistic = all_continuous() ~ "{mean} ± {sd}"
         )|> 
      add_p()|> 
      bold_p(t = 0.05)|>
  as_gt()|>
  gtsave("Table/table-1-quality_of_life_difference_By_Gender 2 group.docx")

#quality_of_life_difference_By_economic class 2 group
datades1 |> 
  select(18:28,"Economic_Class") |> 
  tbl_summary(
    by = "Economic_Class",
    type = everything()~ "continuous",
    statistic = all_continuous() ~ "{mean} ± {sd}"
  )|> 
  add_p()|> 
  bold_p(t = 0.05)|>
  as_gt()|>
  gtsave("Table/table-2-quality_of_life_difference_By_economic_class 2 group.docx")




#names(datades1)