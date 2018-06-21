# Load the data

mum <- readxl::read_excel("data-raw/MUM.xlsx")

## Mutate the data. Taken from 36-202 Lab 7 Spring 2018

mum <- dplyr::mutate(mum, Visibility = as.factor(Visibility), 
              TestResult = as.factor(TestResult))

# Save the data

readr::write_csv(mum, "data-raw/mum.csv")
devtools::use_data(mum, overwrite = TRUE)