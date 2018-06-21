# Get the data

depression <- readxl::read_excel("data-raw/Depression.xlsx")

# Save the data

devtools::use_data(depression, overwrite = TRUE)