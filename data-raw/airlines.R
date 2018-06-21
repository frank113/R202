# Load in the data

airlines <- data.frame(rjson::fromJSON(file = "data-raw/airlines.json"))

airlines <- subset(airlines, select = 
                     c("ArrDelay", "DayOfWeek", "LateAircraft"))

##### Code in 8-18 taken from Frisoli et al. in preparing it for loading #####

# Converting categorical variables to factors with meaningful levels
weekday_names <- c("Mon", "Tues", "Wed", "Thurs", "Fri", "Sat", "Sun")
airlines <- airlines %>% 
  dplyr::mutate(DayOfWeek = factor(DayOfWeek,
                            levels = 1:7,
                            labels = weekday_names),
         LateAircraft = factor(LateAircraft,
                               levels = 0:1,
                               labels = c("Not Late", "Late")))

# Save it

devtools::use_data(airlines, overwrite = TRUE)
