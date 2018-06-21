# Load the data

calculators <- readr::read_csv("http://stat.cmu.edu/202/data/calculators.csv")

# Save the data

readr::write_csv(calculators, "data-raw/calculators.csv")
devtools::use_data(calculators, overwrite = TRUE)