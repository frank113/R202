# Load in the data

nyc <- readr::read_csv("http://stat.cmu.edu/202/data/NYCHousing_project2.csv")

##### Code in 7-10 taken from Frisoli et al. in preparing it for loading #####

nyc <- nyc %>% mutate(Gender = factor(Gender,
                                      levels = 1:2,
                                      labels = c("Female", "Male")),
                      Health = factor(Health))

# Save it
readr::write_csv(nyc, "data-raw/nyc.csv")
devtools::use_data(nyc, overwrite = TRUE)
