# Load the data

courts <- readr::read_csv("http://stat.cmu.edu/202/data/CourtCases_project2.csv")

## Code from Kayla Frisoli (5-14)

years <- c("pre-1997", "1997", "1998", "1999", "2000", "2001")
courts <- courts %>% 
  mutate(BODINJ = factor(BODINJ,
                         levels = 0:1,
                         labels = c("no", "yes")),
         YEAR = factor(YEAR, 
                       levels = 1:6,
                       labels = years))

# Save the data

readr::write_csv(courts, "data-raw/courts.csv")
devtools::use_data(courts, overwrite = TRUE)
