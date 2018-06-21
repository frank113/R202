# Get the data

detergent <- readxl::read_excel("data-raw/Detergent.xlsx")

# Save the data

devtools::use_data(detergent, overwrite = TRUE)