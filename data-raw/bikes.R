# Load in the data

bikes <- readr::read_csv("http://stat.cmu.edu/202/data/bikesharing_project2.csv")

##### Code in 7-16 taken from Frisoli et al. in preparing it for loading #####

weekday_names <- c("Sun", "Mon", "Tues", "Wed", "Thurs", "Fri", "Sat")
weather_type <- c("clear", "misty", "rain/snow")

bikes <- bikes %>% mutate(Day = factor(Day,
                                       levels = 0:6,
                                       labels = weekday_names),
                          Weather = factor(Weather,
                                           levels = 1:3,
                                           labels = weather_type))

# Save it

readr::write_csv(bikes, "data-raw/bikes.csv")
devtools::use_data(airlines, overwrite = TRUE)
