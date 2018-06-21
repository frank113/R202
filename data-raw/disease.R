# Load the data

disease <- readr::read_csv("http://stat.cmu.edu/202/data/disease.csv")

# Clean the data. Taken from 36-202 lab 11 Spring 2018

disease <- dplyr::mutate(disease, 
                  ses = factor(ses, labels = c("upper", "middle", "lower")), 
                  sector = factor(sector, labels = c("sector1", "sector2")))

# Save the data

readr::write_csv(disease, "data-raw/disease.csv")
devtools::use_data(disease, overwrite = TRUE)