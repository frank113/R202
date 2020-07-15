# Load the data

swim <- readr::read_csv("http://stat.cmu.edu/202/data/swim_pessimists.csv")

# Save the data

## readr::write_csv(swim, "data-raw/swim.csv")
usethis::use_data(swim, overwrite = TRUE)