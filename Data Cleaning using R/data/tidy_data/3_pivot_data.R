library(tidyr)

data_split %>% 
  drop_na()

data_replace_na <- data_split %>% 
  replace_na(list(Q1 = 0, Q2 = 0, Q3 = 0, Q4 = 0))

data_pivot <- data_replace_na %>% 
  pivot_longer(
    cols = c(Q1, Q2, Q3, Q4),
    names_to = "period",
    values_to = "amount"
  )

# Exercise
# pivot_wider() the Item and CodeAmount columns in data_exercise
# to create five new columns in the data set
data_exercise %>% 
  pivot_wider(
    names_from = Item,
    values_from = CodeAmount
  )
