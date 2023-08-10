data_clean <- data_pivot %>% 
  fill(Year)

sum(is.na(data_clean))

write_csv(data_clean, "3_output/Clean_Data.csv")
