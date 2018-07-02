context("Test that lv() functions correctly.")

test_that("lv() returns an array of correct length", {
  out.lv <- lv()
  gen.files <- list.files(path = "vignettes/", pattern = ".pdf")
  expect_equal(length(gen.files), length(out.lv))
})