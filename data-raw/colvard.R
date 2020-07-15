# Load the data

colvard <- readxl::read_excel("data-raw/COLVARD.xlsx")

# Write the data

write.csv(colvard, "data-raw/colvard.csv", row.names = FALSE)
devtools::use_data(colvard, overwrite = TRUE)
