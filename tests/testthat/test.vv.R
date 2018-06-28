context("Testing the vv (view_vignette) function")

library(R202)

# Test that an error is thrown when no vignette exists
test_that("vv throws an error when provided with invalid vignette name", {
  invalid.names <- c("Scobell 113", "Hamerschlag 310A RA", 
                     "Delta Tau Delta 209", "Mudge C203 RA", 
                     "Delta Tau Delta 302", "Mudge A101 CA")
  for ( wrong.name in invalid.names ) {
    expect_error( R202::vv( wrong.name ) )
  }
})

# Check that it returns the vignette that it should
test_that("vv returns the correct vignette on a valid name", {
  valid.names <- c("egg", "introR", "knit")
  for ( correct.name in valid.names ) {
    ## actual.vignette is the result of a vignette call
    actual.vignette <- utils::vignette(correct.name, package = "R202")
    vv.out <- R202::vv(correct.name)
    
    expect_equal(actual.vignette, vv.out)
  }
})