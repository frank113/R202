# Load the data

mammals <- read.csv("data-raw/mammals.csv")

# Save the data

usethis::use_data(mammals, overwrite = TRUE)
