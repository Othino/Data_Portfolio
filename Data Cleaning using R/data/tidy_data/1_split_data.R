library(tidyr)

data_split <- data_raw_excel %>% 
  separate(col = ProductID, sep = -4, into = c("product", "product_type")) %>% 
  unite(col = product_category, c(CategoryID, product), sep = "-")

# Exercise
# unite() columns Store and EmployeeID in data_exercise
# using the ":" separator to create column "Store-Employee"
data_exercise %>% 
  unite(col = "Store-Employee", c(Store, EmployeeID), sep = ":")
