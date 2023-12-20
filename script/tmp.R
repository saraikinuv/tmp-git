# учимся работать с git

library(tidyverse)

mtcars %>% 
  summarise(across(where(is.numeric), mean), by = cyl)

df <- clipr::read_clip_tbl()

df %>% 
  mutate(across(starts_with("sp"), ~.x >= 2))

df %>% 
  mutate(n = rowSums(pick(starts_with("sp")) >= 2, na.rm = T))
library(data.table)

COLS <- grep("sp", names(df))
setDT(df)[, n := rowSums(.SD >= 2), .SDcols = COLS][]
