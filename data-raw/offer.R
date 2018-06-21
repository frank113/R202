# Get the data

offer <- readxl::read_excel("data-raw/Offer.xlsx")

# Save the data

devtools::use_data(offer, overwrite = TRUE)