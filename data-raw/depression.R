# Get the data

depression <- readxl::read_excel("data-raw/Depression.xlsx")

# From 36-202 lab 8 Spring 2018

depression <- depression %>% 
  dplyr::rename(Dep_Score = Dep.Score) %>%
  dplyr::mutate(Week = factor(Week))

# Save the data

## readr::write_csv(depression, "data-raw/depression.csv")
usethis::use_data(depression, overwrite = TRUE)