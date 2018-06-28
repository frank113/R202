#' @title View a Vignette in the R202 Package
#'
#' @name vv
#'
#' @description This function provides a wrapper for students to view vignettes
#'     only in the \code{R202} package. \code{view_vignette} is intended to make
#'     the viewing of vignettes as painless as humanly possibe. Upon calling 
#'     the function, the vignette will become viewable in the "viewer" tab of the 
#'     "files" pane in RStudio. 
#'
#' @note This command is identical to \code{vignette("vignetteName", package = "R202")}
#'
#' @param \code{vignetteName} A \code{string} value indicating the name of the 
#'     vignette you wish to see. Will return an \code{error} if the argument does 
#'     not match any existing vignettes. 
#'
#' @usage vv("vignetteName")
#'
#' @return \code{vignette}. An object of class \code{vignette}. If one simply wishes
#'     to view the vignette, calling the function without assignment will 
#'     will display the vignette in the "viewer" tab.
#' 
#' @examples 
#' # view_vignette("egg") ## Views the egg vignette.
#' @seealso \link{vignette}. 
#'
#' @export
"vv"
vv <- function(vignetteName) {
  # check to make sure that it is an existing vignette
  vign.var <- suppressWarnings(
    vignette(vignetteName, package = "R202")
  )
  
  if ( class( vign.var ) != "vignette" ) {
    stop(paste("Invalid vignette name:", vignetteName))
  }
  
  return(vign.var)
}
