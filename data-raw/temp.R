# Load the data

powerLoad <- readxl::read_excel("data-raw/TempLoad.xlsx")

# Save the data

readr::write_csv(powerLoad, "data-raw/temp.csv")
devtools::use_data(powerLoad, overwrite = TRUE)
