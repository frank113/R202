# Load the data

mammals <- readr::read_csv("http://stat.cmu.edu/202/data/mammals.csv")

# Save the data

readr::write_csv(mammals, "data-raw/mammals.csv")
devtools::use_data(mammals, overwrite = TRUE)