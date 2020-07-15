# Load the data

calculators <- read.csv("http://stat.cmu.edu/202/data/calculators.csv")

# Save the data

write.csv(calculators, "data-raw/calculators.csv", row.names = FALSE)
usethis::use_data(calculators, overwrite = TRUE)

