# Get the data

depression <- readxl::read_excel("data-raw/Depression.xlsx")

# Save the data

readr::write_csv(depression, "data-raw/depression.csv")
devtools::use_data(depression, overwrite = TRUE)