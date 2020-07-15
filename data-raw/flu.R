# Load the data

flu <- readxl::read_excel("data-raw/Flu.xlsx")

# Rename variables

flu <- dplyr::rename(flu, flu_shot = Flu.Shot)

# Save the data

## readr::read_csv(flu, "data-raw/flu.csv")
usethis::use_data(flu, overwrite = TRUE)