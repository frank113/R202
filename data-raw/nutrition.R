# Load the data

nutrition <- readr::read_csv("http://stat.cmu.edu/202/data/nutrition_project2.csv")

# Lines 7-14 from Kayla Frisoli

water_levels <- c("0-25", "25-50", "50-75", "75-100")
nutrition <- nutrition %>% 
  mutate(Water = factor(Water,
                        levels = 1:4,
                        labels = water_levels),
         Choles = factor(Choles, 
                         levels = 0:1,
                         labels = c("None", "Some")))

# Save the data

readr::write_csv(nutrition, "data-raw/nutrition.csv")
devtools::use_data(nutrition, overwrite = TRUE)