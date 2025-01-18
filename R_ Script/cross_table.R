# Load packages
library(tidyverse)
library(gtsummary)
library(gt)

# Load Data 
datades1 <- read.csv("Clean_Data/Thalassemia2_QOL.csv")
# demogapic_t_mental_health_status_crosstable
datades1 |>
  select(1:8, "Mental_Health_Status")|>
  tbl_summary(
    by = "Mental_Health_Status",
    statistic = list(
      all_continuous() ~ "{mean} ± ({sd})"
  )
)|>
add_overall()|>
  as_gt()|>
  gtsave("Table/tablecross1.docx")

#names(datades1)

# clinical_health_status_t_"Physical_Health_Status"_crosstable
datades1 |>
  select(9:17, "Physical_Health_Status")|>
  tbl_summary(
    by = "Physical_Health_Status",
    statistic = list(
      all_continuous() ~ "{mean} ± ({sd})"
    )
  )|>
   add_overall()|>
   as_gt()|>
   gtsave("Table/tablecross3_clinical_health_status_physcicalhealth status.docx")
