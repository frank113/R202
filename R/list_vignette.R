#' @title List Vignettes available in the R202 Package
#'
#' @name lv
#'
#' @description This function provides a wrapper for students to list the available
#'     vignettes only in the \code{R202} package. \code{lv} returns a \code{vector} 
#'     of vignettes a sstrings, each of which may be passed to the \code{vv()} 
#'     function.
#'
#' @note This command manipulates the datafame returned by 
#'     \code{vignette(package = "R202")}
#'
#' @param None
#'
#' @usage lv()
#'
#' @return \code{vector}. A vector of \code{string}s indicating the 
#'     vignettes available in the R202 package. 
#' 
#' @examples 
#' # x <- lv()
#' ## x is a vector containing the vignettes
#' ## the below command will be valid
#' # vv(lv()[[1]])
#' @seealso \link{vignette}, \link{vv}, \link{vl}
#'
#' @export
"lv"
lv <- function() {
  # check to make sure that it is an existing vignette
  vign.var <- suppressWarnings(
    vignette(package = "R202")
  )
  
  ## get the dataframe
  vign.df <- vign.var$results
  
  ## Make sure we have vignettes
  if ( nrow(vign.df) == 0 ) {
    return(c())
  }
  
  return(vign.df[,3])
}
