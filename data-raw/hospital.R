# Load the data

hospital <- readxl::read_excel("data-raw/Satisfaction.xlsx")

# Save the data

## readr::write_csv(hospital, "data-raw/hospital.csv")
usethis::use_data(hospital, overwrite = TRUE)
