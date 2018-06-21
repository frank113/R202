# Get the data

detergent <- readxl::read_excel("data-raw/Detergent.xlsx")

# Save the data

readr::write_csv(detergent, "data-raw/detergent.csv")
devtools::use_data(detergent, overwrite = TRUE)