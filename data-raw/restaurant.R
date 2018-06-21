# Load the data

restaurant <- readr::read_csv("http://stat.cmu.edu/202/data/Restaurant.csv")

# Mutations. From 36-202 Lab 12 Spring 2018

restaurant <- dplyr::mutate(restaurant, 
                     Rating = factor(Rating, ordered = TRUE), 
                     Wine = factor(Wine))

# Save the data

readr::write_csv(restaurant, "data-raw/restaurant.csv")
devtools::use_data(restaurant, overwrite = TRUE)
