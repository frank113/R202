# Load the data

ethics <- readr::read_csv("http://stat.cmu.edu/202/data/ethics.csv")

# Clean the data. Taken from 36-202 Homework 5 Spring 2018

ethics <- dplyr::mutate(ethics, treatment = as.factor(treatment))

# Save the data

## readr::write_csv(ethics, "data-raw/ethics.csv")
usethis::use_data(ethics, overwrite = TRUE)
