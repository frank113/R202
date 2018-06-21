# Load the data

facebook_grey <- readr::read_csv("http://stat.cmu.edu/202/data/facebook_greymatter.csv")

# Save the data

readr::write_csv(facebook_grey, "data-raw/facebook_grey.csv")
devtools::use_data(facebook_grey, overwrite = TRUE)
