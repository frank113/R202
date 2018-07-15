# Function to provide the upper and lower bounds for \pm k IQR

#' @title Quantile-Normal Plot with Limits
#' 
#' @author Brian Junker, \email{brian AT stat.cmu.edu}
#' 
#' @name qqn
#' 
#' @description A function used to calculate a normal QQ plot with confidence 
#'     bands representing a 95% confidence interval for the acceptable range
#'     of values. This function extends the graphing capabilities of base R and 
#'     implicitly creates a plot that may be added to. 
#' 
#' @param x A numeric vector of data for which to create the QQ plot. 
#' @param ylab A \code{string} indicating the label for the y-axis of the 
#'     plot. Defaults to the variable name of the argument \code{x}.
#' @param lty1 The line type for the reference line. See \link{par} for 
#'     more information. Defaults to \code{1}.
#' @param lty2 The line types for the confidence intervals. See \link{par}
#'     for more information. Defaults to \code{1}.
#' @param swap A boolean value indicating whether to swap the x and y axes. 
#'     If set to \code{TRUE}, the quantiles of standard normal will be placed on 
#'     the Y axis. Defaults to \code{FALSE}.
#' @param conf A boolean value indicating whether to produce the confidence 
#'     bands. Defaults to \code{TRUE}.
#' @param ... Other arguments passed to \link{qqnorm}.
#'
#' @return An invisible list with the following components: \describe{
#'   \item{\code{z}}{The normal quantiles.}
#'   \item{\code{x}}{The input data.}
#'   \item{\code{slope}}{The slope of the plot.}
#'   \item{\code{zz}}{The z values sorted in ascending order.}
#'   \item{\code{P}}{Probability points. See \link{ppoints} for more 
#'       information.}
#'   \item{\code{SE}}{The delta-method standard error for the confidence 
#'       interval.}
#' }.
#' Additionally the function will always plot the normal QQ plot. 
#' 
#' @references Code taken from Howard Seltman's (\email{hseltman AT cmu.edu})
#'     personal website. \url{http://www.stat.cmu.edu/~hseltman/AboutMe.html}. 
#'     Code may be found at \url{http://www.stat.cmu.edu/~hseltman/files/qqn.R}.
#' @references To read more about the delta method of bound calculations, please
#'     see \url{https://genome.sph.umich.edu/wiki/Code_Sample:_Generating_QQ_Plots_in_R}
#' @note All documentation and code taken from Brian Junker and Howard Seltman.
"qqn"

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



inputs <- c(1, 2, 4, -5, 10)

for(input in inputs) {
  tryCatch(print(paste("log of", input, "=", log(input))),
           warning = function(w) 
             {print(paste("negative argument", input));  log(-input)},
           error = function(e) 
             {print(paste("non-numeric argument", input)); NaN})
}


