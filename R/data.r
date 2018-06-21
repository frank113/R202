#' Airlines
#' @name Airlines
#' @docType data
#' @description A dataset containing federally tracked data for flights. See TO-DO: INSERT INFO FUNCTION
#' @format A dataframe with 500 rows and 3 columns.
#' \describe{
#'	 \item{\code{DayofWeek}}{Day of the week (1 = Monday; 7 = Sunday)}
#'	 \item{\code{ArrDelay}}{Arrival delay in minutes (negative means an early arrival)}
#'	 \item{\code{LateAircraft}}{Was there a delay due to a late aircraft? 1 = Yes 0 = No}
#' }
#' @usage data("airlines")
#' @note  The documentation does not auto-update. If one changes the base file,
#'   this documentation will no longer remain accurate.
#' @note Initially used in 36-200.
"Airlines"

#' Bikes
#' @name Bikes
#' @docType data
#' @description A dataset information about bicycle rentals for days in the years 2011 and 2012.
#' @format A dataframe with 951 rows and 3 columns.
#' \describe{
#' 	 \item{\code{Day}}{The day of the week of the day.}
#' 	 \item{\code{Weather}}{The type of weather on that day. Coded with respect to the following values: 1 = clear, few clouds, partly cloudy, 2 = mist & cloudy, mist & broken clouds, mist & few clouds, mist, 3 = light snow, light rain & Thunderstorm & scattered clouds, light rain & scattered clouds, 4 = heavy rain & ice pellets & thunderstorm & mist, snow & fog}
#' 	 \item{\code{Casual}}{The number of casual bike users}
#' }
#' @usage data("bikes")
#' @note  The documentation does not auto-update. If one changes the base file,
#'   this documentation will no longer remain accurate.
"Bikes"

#' Depression
#' @name Depression
#' @docType data
#' @aliases depression
#' @title Depression after an earthquake.
#' @author Gordon Weinberg \email{gordonw@stat.cmu.edu}
#' @format A dataframe with 125 rows and 3 columns.
#' \describe{
#'   \item{\code{Dep.Score}}{The student's depression score (higher -> more depressed)}
#'   \item{\code{Week}}{Weeks relative to the earthquake. \itemize{
#'     \item{-2}{Two weeks prior to the earthquake.}
#'     \item{1}{One week after the earthquake.}
#'     \item{4}{Four weeks after the earthquake.}
#'     \item{7}{Seven weeks after the earthquake.}
#'     \item{10}{Ten weeks after the earthquake.}
#'     }}
#'   \item{\code{Subject}}{Subject Number.}
#' }
#' @usage data("depression")
#' @note 36-202 Lab Data.
"Depression"

#' Detergent
#' @name Detergent
#' @docType data
#' @description Laundry detergent manufacturers often make advertising
#' claims that their product gets clothes the ‘whitest and brightest.’
#' To test such claims, Consumer Reports conducted a study of five laundry
#' detergents: Three leading national brands (Tide, Cheer, and Woolite), one
#' generic brand, and one ‘eco’ brand made with eco-friendly ingredients).
#' One hundred fifty identical sheets were equally soiled and then randomly
#' assigned to be washed in different Brands and different Temperatures, as
#' follows: Thirty sheets were washed per brand, 10 with cold water, 10 with
#' warm water, 10 with hot water. After washing, the Whiteness was measured
#' using laser equipment (higher score = more white).
#' @author Gordon Weinberg \email{gordonw@stat.cmu.edu}
#' @format A dataframe with 150 rows and 3 columns.
#' \describe{
#'   \item{\code{Brand}}{The brand of detergent: \itemize{
#'     \item{\code{generic}}
#'     \item{\code{Woolite}}
#'     \item{\codase{Tide}}
#'     \item{\code{eco}}
#'     \item{\code{Cheer}}
#'     }
#'   }
#'   \item{\code{Whiteness}}{A whiteness score for each sheet after treatment. A
#'   higher score indicates a whiter color.}
#'   \item{\code{Temp}}{The category of temperature of the washing of the sheet.
#'   \itemize{
#'     \item{\code{0}}{Cold}
#'     \item{\code{1}}{Warm}
#'     \item{\code{2}}{Hot}
#'     }
#'   }
#' }
#' @usage data("detergent")
#' @note 36-202 Homework Data.
"Detergent"

#' Offer
#' @name Offer
#' @docType data
#' @description Data from a consumer advocacy organization concerning the amount of
#' money offered by dealerships for used cars as a function of the seller's age and
#' gender.
#' @author Gordon Weinberg \email{gordonw@stat.cmu.edu}
#' @format A dataframe with 36 rows and 3 columns.
#' \describe{
#'   \item{\code{Offer}}{Amount offered in hundreds of dollars.}
#'   \item{\code{Age}}{The age category of the seller: \itemize{
#'     \item{\code{1}}{Young}
#'     \item{\code{2}}{Middle-Aged}
#'     \item{\code{3}}{Elderly}
#'     }}
#'   \item{\code{Gender}}{\itemize{
#'     \item{\code{M}}{Male}
#'     \item{\code{F}}{Female}
#'     }}
#' }
#' @usage data("Offer")
#' @note 36-202 Lab Data.
"Offer"












