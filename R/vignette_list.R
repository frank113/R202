#' @title Produce a Mapping of Available Vignettes with Titles
#'
#' @name vl
#'
#' @description This function provides a wrapper for students to see the available
#'     vignettes in the \code{R202} package. \code{vl} opens a tab in the 
#'     primary editor pane of RStudio displaying the vignettes and titles available
#'     in the package. 
#'
#' @note This command produces the same result as 
#'     \code{vignette(package = "R202")}
#'
#' @param None
#'
#' @usage vl()
#'
#' @return \code{Named List}. A named list containing attributes about the
#'     available vignettes. For simplicity, it is recommended that one only
#'     calls the `vl()` function in an R terminal. 
#' 
#' @examples 
#' # vl()
#'
#' @seealso \link{vignette}, \link{vv}, \link{lv}
#'
#' @export
"vl"
vl <- function() {
  # check to make sure that it is an existing vignette
  vign.var <- suppressWarnings(
    vignette(package = "R202")
  )
  
  if ( is.null( names(vign.var) ) ) {
    ## we don't have any vignettes
    stop("No vignettes available. Please-reinstall the pacakge.")
  }
  
  return(vignette(package = "R202"))
}
