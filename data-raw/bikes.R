# Load in the data

bikes <- read.csv("http://stat.cmu.edu/202/data/bikesharing_project2.csv")

##### Code in 7-16 taken from Frisoli et al. in preparing it for loading #####

weekday_names <- c("Sun", "Mon", "Tues", "Wed", "Thurs", "Fri", "Sat")
weather_type <- c("clear", "misty", "rain/snow")

bikes <- bikes %>% dplyr::mutate(Day = factor(Day,
                                       levels = 0:6,
                                       labels = weekday_names),
                          Weather = factor(Weather,
                                           levels = 1:3,
                                           labels = weather_type))

# Save it

write.csv(bikes, "data-raw/bikes.csv", row.names = FALSE)
usethis::use_data(bikes, overwrite = TRUE)

