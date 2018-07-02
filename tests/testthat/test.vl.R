context("Check that vignette lsit function functions correctly.")

test_that("vl() does not return an error", {
  vl.obj <- vl()
  expect_equal(class(vl.obj), "packageIQR")
})

