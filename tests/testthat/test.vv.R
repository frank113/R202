context("Testing the vv (view_vignette) function")

# Test that an error is thrown when no vignette exists
test_that("vv throws an error when provided with invalid vignette name", {
  invalid.names <- c("Scobell 113", "Hamerschlag 310A RA", 
                     "Delta Tau Delta 209", "Mudge C203 RA", 
                     "Delta Tau Delta 302", "Mudge A101 CA")
  for ( wrong.name in invalid.names ) {
    expect_error( R202::vv( wrong.name ) )
  }
})
