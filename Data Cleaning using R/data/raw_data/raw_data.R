library(readr)
library(readxl)

data_stores <- readr::read_csv("1_data/1_data_sources/02_Stores.csv")
str(data_stores)

folder_path <- "1_data/1_data_sources/"
excel_file <- "03_excel_source_data.xlsx"
data_raw_excel <- read_excel(paste(folder_path, excel_file, sep = ""))

# Exercise
# Import the 04_exercise_data.csv with UI or code
# Save as data_exercise
data_exercise <- read_csv("1_data/1_data_sources/04_exercise_data.csv")
