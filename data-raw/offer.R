# Get the data

offer <- readxl::read_excel("data-raw/Offer.xlsx")

## Clean the data. Taken from 36-202 Lab 7 Spring 2018

offer <- dplyr::mutate(offer, Age = as.factor(Age), 
                Gender = as.factor(Gender))

# Save the data

## readr::write_csv(offer, "data-raw/offer.csv")
usethis::use_data(offer, overwrite = TRUE)