# Get the data

detergent <- readxl::read_excel("data-raw/Detergent.xlsx")

# Data mutation. Taken from 36-202 Homework 6 Spring 2018

detergent <- detergent %>% 
  dplyr::mutate(Temp = factor(Temp,
                       levels = 0:2,
                       labels = c("cold", "warm", "hot")),
         Brand = as.factor(Brand))

# Save the data

readr::write_csv(detergent, "data-raw/detergent.csv")
devtools::use_data(detergent, overwrite = TRUE)