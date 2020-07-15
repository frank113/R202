# Load the data

houses <- readxl::read_excel("data-raw/House.xlsx")

# Save the data

## readr::write_csv(houses, "data-raw/houses.csv")
usethis::use_data(houses, overwrite = TRUE)