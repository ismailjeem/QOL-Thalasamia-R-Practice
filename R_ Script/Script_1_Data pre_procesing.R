library(tidyverse)
library(readxl)
Data < - read_excel("R_ Data/Thalassemia_QOL.xlsx")
library(tidyverse)
library(readxl)
Data <- read_excel("R_ Data/Thalassemia_QOL.xlsx")
library(tidyverse)

# Assuming your CSV file is located in the "R_ Data" folder 
Data2 <- read_csv("R_ Data/Thalassemia_QOL.csv")
#export data
write.csv(Data2.csv, "Clean_Data/Thalassemia2_QOL.csv", row.names = FALSE)
# Assuming your data is stored in a data frame named 'Data2'
write.csv(Data2, "Clean_Data/Thalassemia2_QOL.csv", row.names = FALSE)