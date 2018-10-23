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
#'
#' @export
"qqn"

qqn <- function(x, ylab=deparse(substitute(x)), lty1=1, lty2=1, swap=FALSE,
               conf=TRUE,  ...) {
  #
  # qqenv - draw 
  #         * qqnorm plot
  #         * qqline reference line
  #         * pointwise 95\% conf envelope
  # for data x, where the approximate 95\% envelope uses delta-method
  # standard errors suggested by Fox, p. 44.
  #
  # swap=TRUE puts observed on x axis
  #
  # save z,x from qqnorm plot
  qqpairs <- stats::qqnorm(x, plot.it=FALSE, ...)
  z <- qqpairs[[1]]
  
  #
  #
  # save intercept and slope from qqline plot
  #coefs = qqline(x,lty=lty1)
  data.quartiles <- stats::quantile(x, c(0.25, 0.75), na.rm = TRUE)
  norm.quartiles <- stats::qnorm(c(0.25, 0.75))
  sigma <- (data.quartiles[2] - data.quartiles[1])/(norm.quartiles[2] - 
                                                      norm.quartiles[1]) # slope
  mu <- data.quartiles[1] - norm.quartiles[1] * sigma
  
  #
  #
  # compute delta-method std error for conf envelope
  zz <- sort(z)
  N <- length(zz)
  P <- stats::ppoints(N)
  SE <- NULL
  if (conf) {
    SE <-  sigma * sqrt(P*(1-P)/N) / stats::dnorm(zz)
    zzu <- mu + sigma*zz + 2*SE
    zzl <- mu + sigma*zz - 2*SE
  } 
  #
  #
  # plot it!
  if (conf) {
    if (!swap) {
      graphics::plot(z, x, xlab="Quantiles of Standard Normal",
           ylab=ylab, ylim=range(x,zzu,zzl), ...)  
    } else {
      graphics::plot(x, z, ylab="Quantiles of Standard Normal",
           xlab=ylab, xlim=range(x,zzu,zzl), ...)
    }
  } else {
    if (!swap) {
      graphics::plot(z, x, xlab="Quantiles of Standard Normal", ylab=ylab, ...)
    } else {
      graphics::plot(x, z, ylab="Quantiles of Standard Normal", xlab=ylab, ...)
    }
  }
  if (!swap) {
    graphics::abline(mu, sigma, lty=lty1)
  } else {
    graphics::abline(-mu/sigma, 1/sigma, lty=lty1)
  }
  if (conf) {
    if (!swap) {
      graphics::lines(zz, zzu, lty=lty2)
      graphics::lines(zz, zzl, lty=lty2)
    } else {
      graphics::lines(zzu, zz, lty=lty2)
      graphics::lines(zzl, zz, lty=lty2)
    }
  }
  #
  #
  # return all the pieces
  invisible(list(z=z,x=x,intercept=mu,slope=sigma,zz=zz,P=P,SE=SE))
}
