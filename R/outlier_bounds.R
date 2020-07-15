#' @title Outlier Bounds Using K IQR
#' 
#' @author Frank Kovacs, \email{fkovacs AT andrew.cmu.edu}
#' 
#' @name outlier_bounds
#' 
#' @description A function used to calculate the bounds containing observations
#'     not classified as outliers. In short, any observations above the upper 
#'     limit or below the lower limit will be classified as outliers. 
#'
#' @param vect A numeric vector of data for which to calculate bounds. 
#' @param k A \code{number} the value of k to use when calculating outliers. Defaults
#'     to 1.5.
#'
#' @return An object with the following fields: \describe{
#'   \item{\code{upper}}{The upper bound of non-outlier values.}
#'   \item{\code{lower}}{The lower bound of non-outlier values.}
#' }
#' 
#' @export
"outlier_bounds"

outlier_bounds <- function(vect, k = 1.5) {
  if ( !all(is.numeric(vect)) ) {
    stop("vect contains non-numeric values")
  }
  
  if ( k <= 0 ) {
    stop("K must be positive")
  }
  
  if ( k < 1 ) {
    ## we already know from other line that k is positive
    warning("K is smaller than 1")
  }
  
  
  # TO_DO: Make pre-conditions
  iqr.k.val <- k * stats::IQR(vect)
  
  ## make the quantiles
  quants <- stats::quantile(vect, names = FALSE)
  q.1 <- quants[[2]]
  q.3 <- quants[[4]]
  
  ## make the lower value
  lower.val <- q.1 - iqr.k.val
  upper.val <- q.3 + iqr.k.val
  
  ## make the list
  bounds <- list(lower.val, upper.val)
  names(bounds) <- c("lower", "upper")
  return(bounds)
}


