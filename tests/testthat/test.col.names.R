context("Test that columns are named correctly and of correct type")

## has the names we think it will
test_that("Airlines has correctly named columns", {
  correct.names <- c("ArrDelay", "DayOfWeek", "LateAircraft")
  # data("airlines")
  df.names <- names(airlines)
  for (i in 1:ncol(airlines)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
  # rm(airlines)
})

# Algebra
test_that("Algebra has correctly named columns", {
  correct.names <- c("Score", "Condition", "Years", 
                     "Grade", "ConditionLabels")
  df.names <- names(algebra)
  for (i in 1:ncol(algebra)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# Bikes
test_that("Bikes has correctly named columns", {
  correct.names <- c("Casual", "Day", "Weather")
  df.names <- names(bikes)
  for (i in 1:ncol(bikes)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# Calculators
test_that("Calculators has correctly named columns", {
  correct.names <- c("times", "model", "person", "problem")
  df.names <- names(calculators)
  for (i in 1:ncol(calculators)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# Colvard
test_that("Colvard has correctly named columns", {
  correct.names <- c("Rating", "TotalScore", "SubScore1", "SubScore2", "SubScore3")
  df.names <- names(colvard)
  for (i in 1:ncol(colvard)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# Countries
test_that("Countries has correctly named columns", {
  correct.names <- c("Country", "LandArea","Population","Density", "GDP",
                     "Rural", "CO2", "PumpPrice", "Military","Health", 
                     "ArmedForces", "Internet", "Cell", "HIV", "Hunger",
                     "Diabetes", "BirthRate", "DeathRate", "ElderlyPop", "LifeExpectancy", 
                     "FemaleLabor", "Unemployment", "EnergyUse", "Electricity", "Developed")
  df.names <- names(countries)
  for (i in 1:ncol(countries)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# Court Cases
test_that("Court Cases has correctly named columns", {
  correct.names <- c("TOTDAM", "BODINJ", "YEAR")
  df.names <- names(courts)
  for (i in 1:ncol(courts)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# Depression
test_that("Depression has correctly named columns", {
  correct.names <- c("Dep_Score", "Week", "Subject")
  df.names <- names(depression)
  for (i in 1:ncol(depression)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# Detergent
test_that("Detergent has correctly named columns", {
  correct.names <- c("Whiteness", "Brand", "Temp")
  df.names <- names(detergent)
  for (i in 1:ncol(detergent)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# Disease
test_that("Diseases has correctly named columns", {
  correct.names <- c("age", "ses", "sector", "disease_status")
  df.names <- names(disease)
  for (i in 1:ncol(disease)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# Ethics
test_that("Ethics has correctly named columns", {
  correct.names <- c("treatment", "age", "pre", "post", 
                      "diff")
  df.names <- names(ethics)
  for (i in 1:ncol(ethics)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# Facebook_grey
test_that("facebook_grey has correctly named columns", {
  correct.names <- c("GMdensity", "FBfriends")
  df.names <- names(facebook_grey)
  for (i in 1:ncol(facebook_grey)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# flights
test_that("Flights has a correctly named column", {
  expect_equal(names(flights)[[1]], "time")
  expect_equal(length(names(flights)), 1)
})

# Flu
test_that("Flu has 50 correctly named columns", {
  correct.names <- c("flu_shot", "Age")
  df.names <- names(flu)
  for (i in 1:ncol(flu)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# Hospital satisfaction
test_that("Hospital Satisfaction has correctly named columns", {
  correct.names <- c("Satisfaction", "Age", "Severity", 
                     "Anxiety", "Gender")
  df.names <- names(hospital)
  for (i in 1:ncol(hospital)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# Houses
test_that("Houses has correctly named columns", {
  correct.names <- c("Price", "Area", "Rooms", 
                     "Location", "dum.loc1", "dum.loc2")
  df.names <- names(houses)
  for (i in 1:ncol(houses)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# Mammals
test_that("Mammals has correctly named columns", {
  correct.names <- c("Animal", "Sleep", "BodyWt", 
                     "LifeSpan", "Gestation", "Danger")
  df.names <- names(mammals)
  for (i in 1:ncol(mammals)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# Mum
test_that("Mum has correctly named columns", {
  correct.names <- c("Time", "Visibility", "TestResult")
  df.names <- names(mum)
  for (i in 1:ncol(mum)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# NYC
test_that("NYC has correctly named columns", {
  correct.names <- c("Income", "Gender", "Health")
  df.names <- names(nyc)
  for (i in 1:ncol(nyc)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# Nutrition
test_that("Nutrition has correctly named columns", {
  correct.names <- c("Shrt_Desc", "Energy", 
                     "Water", "Choles")
  df.names <- names(nutrition)
  for (i in 1:ncol(nutrition)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# Offer
test_that("Offer data has correctly named columns", {
  correct.names <- c("Offer", "Age", "Gender")
  df.names <- names(offer)
  for (i in 1:ncol(offer)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# Restaurant
test_that("Restaurant has correctly named columns", {
  correct.names <- c("Rating", "Groupsize", "Wine")
  df.names <- names(restaurant)
  for (i in 1:ncol(restaurant)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# Social
test_that("Social Media has correctly named columns", {
  correct.names <- c("shares", "videos", "channel")
  df.names <- names(social)
  for (i in 1:ncol(social)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# Swimmers
test_that("Swimmers data has correctly named columns", {
  correct.names <- c("Ratio", "CN")
  df.names <- names(swim)
  for (i in 1:ncol(swim)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

# TempLoad
test_that("Temp has correctly named columns", {
  correct.names <- c("temp", "load")
  df.names <- names(temp)
  for (i in 1:ncol(temp)) {
    expect_equal(df.names[[i]], correct.names[[i]])
  }
})

