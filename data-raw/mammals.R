# Load the data

mammals <- read.csv("data-raw/mammals.csv")

# Save the data

## readr::write_csv(mammals, "data-raw/mammals.csv")
usethis::use_data(mammals, overwrite = TRUE)