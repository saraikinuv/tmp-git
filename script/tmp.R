# учимся работать с git

library(tidyverse)

mtcars %>% 
  summarise(across(where(is.numeric), mean), by = cyl)
