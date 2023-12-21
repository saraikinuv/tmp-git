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

# что-то добавили
# cd code-user/ # Переходим в директорию code-user
#   git status
# git restore hexlet.txt
# git restore --staged index.md index.html
# git restore index.html
# git clean -fd

df <- data.frame(
  A = c(1, 2, 3),
  B = c("TEST", "YEAR", "TELL"),
  C = c(TRUE, FALSE, TRUE))

df

df[1,]
asplit(df, 1)
