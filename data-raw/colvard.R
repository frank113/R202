# Load the data

colvard <- readxl::read_excel("data-raw/COLVARD.xlsx")

# Write the data

readr::write_csv(colvard, "data-raw/colvard.csv")
devtools::use_data(colvard, overwrite = TRUE)