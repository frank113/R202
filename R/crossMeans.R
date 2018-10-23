#' @title Means for 2 way ANOVA
#' 
#' @author Howard Seltman, \email{hseltman AT stat.cmu.edu}
#' 
#' @name crossMeans
#' 
#' @description A function used to calculate a 2 x 2 table of means for use in 
#'     ANOVA.
#' 
#' @param dtf A data frame.
#' @param f1 Name of the first categorical predictor variable (quoted or unquoted). Defaults to \code{"f1"}.
#' @param f2 Name of the second categorical predictor variable (quoted or unquoted). Defaults to \code{"f2"}.
#' @param y Name of the quantitative outcome (quoted or unquoted). Defaults to \code{"y"}.
#' @param deci Number of decimal places in the output. Defaults to \code{1}.
#' @param margins Set to TRUE to add marginal means. Defaults to \code{FALSE}.
#'
#' @return A named \link{matrix} with the resulting 2-way table of means.
#' 
#' @references Code taken from Howard Seltman's (\email{hseltman AT cmu.edu})
#'     personal website. \url{http://www.stat.cmu.edu/~hseltman/AboutMe.html}. 
#'
#' @note Minor style modifications made by Frank Kovacs (\email{fkovacs AT andrew.cmu.edu}).
#' @export
"crossMeans"

crossMeans <- function(dtf, f1="f1", f2="f2", y="y", deci=1, margins=FALSE) {
  
  # Check and manipulate input
  if (!is.data.frame(dtf)) {
    stop("bad data.frame")
  }
  
  if (!is.character(f1)) {
    f1 <- deparse(substitute(f1))
  }
  
  if (!is.character(f2)) {
    f2 <- deparse(substitute(f2))
  }
  if (f1 == f2) {
    stop("f1 cannot be the same as f2")
  }
  
  if (!is.character(y)) {
    y <- deparse(substitute(y))
  }
  
  if (!all(c(f1, f2, y) %in% names(dtf))) {
    stop("bad variable names")
  }
  
  if (!is.factor(dtf[, f1])) {
    dtf[, f1] <- factor(dtf[, f1])
  }
  
  if (!is.factor(dtf[, f2])) {
    dtf[, f2] <- factor(dtf[, f2])
  }
  
  # compute 2-way means matrix
  agg <- stats::aggregate(list(meanY=dtf[, y]), 
                   list(f1=dtf[, f1], f2=dtf[, f2]), 
                   mean)
  nLev1 <- length(levels(dtf[, f1]))
  tbl <- matrix(agg$meanY, nrow=nLev1)
  dimnames(tbl) <- list(levels(dtf[, f1]), levels(dtf[, f2]))
  
  # add margins
  m1 <- stats::aggregate(dtf[, y], 
                  list(f1=dtf[, f1]), 
                  mean)$x
  m2 <- stats::aggregate(dtf[, y], 
                  list(f2=dtf[, f2]), 
                  mean)$x
  
  # add in margins
  if (margins) {
    tbl <- cbind(tbl, margin=m1)
    tbl <- rbind(tbl, margin=c(m2, mean(dtf[, y])))
  }
  
  return(round(tbl, deci))
}

