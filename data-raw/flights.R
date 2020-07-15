# Load the data

flights <- readr::read_csv("http://stat.cmu.edu/202/data/flight.csv")

# Save the data

## readr::write_csv(flights, "data-raw/flights.csv")
usethis::use_data(flights, overwrite = TRUE)