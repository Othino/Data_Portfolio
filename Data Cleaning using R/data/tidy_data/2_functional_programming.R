library(purrr)

sum(is.na(data_split$Q2))

data_split %>% 
  map(~ sum(is.na(.)))
  
# Exercise
# For each column in data_exercise, use the map function with a formula
# to return the mean number of characters of each row, ignoring NA values

data_exercise %>% 
  map(~ mean(nchar(., keepNA = FALSE)))
