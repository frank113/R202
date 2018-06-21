# Get the data

offer <- readxl::read_excel("data-raw/Offer.xlsx")

# Save the data

readr::write_csv(offer, "data-raw/offer.csv")
devtools::use_data(offer, overwrite = TRUE)