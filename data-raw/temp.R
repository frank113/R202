# Load the data

temp <- readxl::read_excel("data-raw/TempLoad.xlsx")

# Save the data

readr::write_csv(temp, "data-raw/temp.csv")
devtools::use_data(temp, overwrite = TRUE)