context("Test datasets have correct dimensions")

# Airlines
test_that("Airlines has 500 rows and 3 columns", {
  data("airlines")
  expect_equal(nrow(airlines), 500)
  expect_equal(ncol(airlines), 3)
  
})

# Algebra
test_that("Algebra has 125 rows and 5 columns", {
  data("algebra")
  expect_equal(nrow(algebra), 125)
  expect_equal(ncol(algebra), 5)
  # rm(algebra)
})

# Bikes
test_that("Bikes has 951 rows and 3 columns", {
  data("bikes")
  expect_equal(nrow(bikes), 951)
  expect_equal(ncol(bikes), 3)
})

# Calculators
test_that("Calculators has 24 rows and 4 columns", {
  data("calculators")
  expect_equal(nrow(calculators), 24)
  expect_equal(ncol(calculators), 4)
  # rm(calculators)
})

# Colvard
test_that("Colvard has 120 rows and 5 columns", {
  data("colvard")
  expect_equal(nrow(colvard), 120)
  expect_equal(ncol(colvard), 5)
  # rm(colvard)
})

# Countries
test_that("Countries has 215 rows and 25 columns", {
  data("countries")
  expect_equal(nrow(countries), 215)
  expect_equal(ncol(countries), 25)
  # rm(countries)
})

# Court Cases
test_that("Court Cases has 150 rows and 3 columns", {
  data("courts")
  expect_equal(nrow(courts), 150)
  expect_equal(ncol(courts), 3)
  # rm(courts)
})

# Depression
test_that("Depression has 125 rows and 3 columns", {
  data("depression")
  expect_equal(nrow(depression), 125)
  expect_equal(ncol(depression), 3)
  # rm(depression)
})

# Detergent
test_that("Detergent has 150 rows and 3 columns", {
  data("detergent")
  expect_equal(nrow(detergent), 150)
  expect_equal(ncol(detergent), 3)
  # rm(detergent)
})

# Disease
test_that("Diseases has 196 rows and 4 columns", {
  data("disease")
  expect_equal(nrow(disease), 196)
  expect_equal(ncol(disease), 4)
  # rm(disease)
})

# Ethics
test_that("Ethics has 87 rows and 5 columns", {
  data("ethics")
  expect_equal(nrow(ethics), 87)
  expect_equal(ncol(ethics), 5)
})

# Example
test_that("Example has 200 rows and 7 columns", {
  data("example")
  expect_equal(nrow(example), 200)
  expect_equal(ncol(example), 7)
})

# Facebook_grey
test_that("facebook_grey has 40 rows and 2 columns", {
  data("facebook_grey")
  expect_equal(nrow(facebook_grey), 40)
  expect_equal(ncol(facebook_grey), 2)
  # rm(facebook_grey)
})

# flights
test_that("Flights has 31 rows and 1 column", {
  data("flights")
  expect_equal(nrow(flights), 31)
  expect_equal(ncol(flights), 1)
  # rm(flights)
})

# Flu
test_that("Flu has 50 rows and 2 columns", {
  data("flu")
  expect_equal(nrow(flu), 50)
  expect_equal(ncol(flu), 2)
  # rm(flu)
})

# Hospital satisfaction
test_that("Hospital Satisfaction has 23 rows and 5 columns", {
  data("hospital")
  expect_equal(nrow(hospital), 23)
  expect_equal(ncol(hospital), 5)
  # rm(hospital)
})

# Houses
test_that("Houses has 30 rows and 6 columns", {
  data("houses")
  expect_equal(nrow(houses), 30)
  expect_equal(ncol(houses), 6)
  # rm(houses)
})

# Mammals
test_that("Mammals has 51 rows and 6 columns", {
  data("mammals")
  expect_equal(nrow(mammals), 51)
  expect_equal(ncol(mammals), 6)
  # rm(mammals)
})

# Mum
test_that("Mum has 40 rows and 3 columns", {
  data("mum")
  expect_equal(nrow(mum), 40)
  expect_equal(ncol(mum), 3)
  # rm(mum)
})

# NYC
test_that("NYC has 339 rows and 3 columns", {
  data("nyc")
  expect_equal(nrow(nyc), 339)
  expect_equal(ncol(nyc), 3)
  # rm(nyc)
})

# Nutrition
test_that("Nutrition has 340 rows and 4 columns", {
  data("nutrition")
  expect_equal(nrow(nutrition), 340)
  expect_equal(ncol(nutrition), 4)
  # rm(nutrition)
})

# Offer
test_that("Offer data has 36 rows and 3 columns", {
  data("offer")
  expect_equal(nrow(offer), 36)
  expect_equal(ncol(offer), 3)
  # rm(offer)
})

# Restaurant
test_that("Restaurant data has 40 rows and 3 columns", {
  data("restaurant")
  expect_equal(nrow(restaurant), 40)
  expect_equal(ncol(restaurant), 3)
  # rm(restaurant)
})

# Social
test_that("Social Media data has 500 rows and 3 columns", {
  data("social")
  expect_equal(nrow(social), 500)
  expect_equal(ncol(social), 3)
  # rm(social)
})

# Swimmers
test_that("Swimmers data has 16 rows and 2 columns", {
  data("swim")
  expect_equal(nrow(swim), 16)
  expect_equal(ncol(swim), 2)
  # rm(swim)
})

# powerLoad
test_that("powerLoad has 25 rows and 2 columns", {
  data("powerLoad")
  expect_equal(nrow(powerLoad), 25)
  expect_equal(ncol(powerLoad), 2)
  # rm(temp)
})

