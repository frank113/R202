# Load the data

countries <- readr::read_csv("http://stat.cmu.edu/202/data/countries.csv")

# Save the data

readr::write_csv(countries, "data-raw/countries.csv")
devtools::use_data(countries, overwrite = TRUE)