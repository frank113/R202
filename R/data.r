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
#' @note Project 2 data.
"airlines"

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
#' @note Project 2 data.
"bikes"

#' Court Cases
#' @name Courts
#' @docType data
#' @aliases court
#' @title Civil rights case statistics
#' @format A dataframe with 150 rows and 3 columns.
#' \describe{
#'   \item{\code{TOTDAM}}{Total amount of damages awarded to plaintiff in USD.}
#'   \item{\code{BODINJ}}{A binary variable indicating whether a bodily injury was part of the claim.}
#'   \item{\code{Year}}{Year the lawsuit was filed. Categorized as follows: \itemize{
#'     \item{1}{Pre-1997}
#'     \item{2}{1997}
#'     \item{3}{1998}
#'     \item{4}{1999}
#'     \item{5}{2000}
#'     \item{6}{2001}
#'     }}
#' }
#' @usage data("courts")
#' @note  The documentation does not auto-update. If one changes the base file,
#'   this documentation will no longer remain accurate.
#' @note Project 2 data.
"courts"

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
#' @note  The documentation does not auto-update. If one changes the base file,
#'   this documentation will no longer remain accurate.
#' @note 36-202 Lab Data.
"depression"

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
#' @note  The documentation does not auto-update. If one changes the base file,
#'   this documentation will no longer remain accurate.
#' @note 36-202 Homework Data.
"detergent"

#' Mammals
#' @name Mammals
#' @docType data
#' @aliases MammalSleep
#' @title Sleep, Gestation and Danger of Mammals
#' @format A dataset containing 51 rows and 6 columns.
#' \describe{
#'   \item{\code{Animal}}{Animal Name}
#'   \item{\code{Sleep}}{Hours of sleep in a day.}
#'   \item{\code{BodyWt}}{Weight in kg.}
#'   \item{\code{LifeSpan}}{Maximum life span in years.}
#'   \item{\code{Gestation}}{The gestation period of the animal.}
#'   \item{\code{Danger}}{The danger rating of an animal on a scale from 1-5.}
#'   }
#' @usage data("mammals")
#' @note 36-202 Lab Data.
"mammals"

#' New York City Housing
#' @name nyc
#' @docType data
#' @description Data from  the New York City Housing and Vacancy Survey to understand housing conditions.
#' @format A dataframe with 339 rows and 3 columns.
#' \describe{
#'   \item{\code{Income}}{Total household income in USD.}
#'   \item{\code{Gender}}{Respondent's self-reported gender identity: \itemize{
#'     \item{\code{1}}{Female}
#'     \item{\code{2}}{Male}
#'     }}
#'   \item{\code{Gender}}{Respondent's categorical self-assesment of health status. Higher values indicate a more healthy individual.}
#' }
#' @usage data("nyc")
#' @note  The documentation does not auto-update. If one changes the base file,
#'   this documentation will no longer remain accurate.
#' @note Project 2 data.
"nyc"

#' Nutrition Data
#' @name nutrition
#' @docType data
#' @description Data from the United States Department of Agriculture's Natoinal
#'     Nutrient Database for Standard Reference. The data given was collected during a one-week interval in 2017.
#' @format A dataframe with 340 rows and 3 columns.
#' \describe{
#'   \item{\code{Shrt_Desc}}{The name of the food.}
#'   \item{\code{Energy}}{Food energy in kcal per 100 grams.}
#'   \item{\code{Water}}{Water in grams per 100 grams of food. Itemized as follows: \itemize{
#'     \item{\code{1}}{Between 0 and <25 grams}
#'     \item{\code{2}}{Between 25 and <50 grams}
#'     \item{\code{3}}{Between 50 and <75 grams}
#'     \item{\code{4}}{Between 75 and <100 grams}
#'     }}
#'   \item{\code{Choles}}{Cholesterol values. Classified as \code{0} if 0mg / 100g, \code{1} otherwise.}
#' }
#' @usage data("nutrition")
#' @note  The documentation does not auto-update. If one changes the base file,
#'   this documentation will no longer remain accurate.
#' @note Project 2 data.
"nutrition"

#' Offer
#' @name Offer
#' @docType data
#' @description Data from a consumer advocacy organization concerning the amount of
#' money offered by dealerships for used cars as a function of the seller's age and
#' gender.
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
#' @usage data("offer")
#' @note  The documentation does not auto-update. If one changes the base file,
#'   this documentation will no longer remain accurate.
#' @note 36-202 Lab Data.
"offer"

#' Social Media
#' @name social
#' @docType data
#' @description Data from \textit{Predicting the Popularity of Online News}. 
#' @format A dataframe with 500 rows and 3 columns.
#' \describe{
#'   \item{\code{shares}}{The number of shares in a social network.}
#'   \item{\code{videos}}{The number of videos in the article. Categories: \itemize{
#'     \item{\code{0}}{0}
#'     \item{\code{1}}{1}
#'     \item{\code{2}}{>=2}
#'     }}
#'   \item{\code{channel}}{The type of channel. One of: \itemize{
#'     \item{\code{Business}}{}
#'     \item{\code{Entertainment}}{}
#'     \item{\code{Lifestyle}}{}
#'     \item{\code{Other}}{}
#'     \item{\code{SocialMedia}}{}
#'     \item{\code{Tech}}{}
#'     \item{\code{World}}{}
#'     }}
#' }
#' @usage data("social")
#' @note  The documentation does not auto-update. If one changes the base file,
#'   this documentation will no longer remain accurate.
#' @note Project 2 data.
"social"

#' Swimmers
#' @name Swimmers
#' @docType data
#' @description You often hear that a negative outlook can be self-defeating. To
#' test whether this is really true, psychology researchers conducted a study in
#' 1990 on a group of 33 swim-team members at the University of California at
#' Berkeley. 16 of them are cataloged in this data set. 
#' @source Author Seligman, M.E.P., Nolen-Hoeksema, S., Thornton, N. and Thornton, C.M. (1990)
#' Explanatory style as a mechanism of disappointing athletic performance.
#' \emph{Psychological Science}, \bold{1}, 143--146,
#' \url{http://www.uvm.edu/~dhowell/StatPages/Swimming/Swimming.html}
#' @format A dataframe with 16 rows and 2 columns.
#' \describe{
#'   \item{\code{Pessimism}}{The pessimism score of each swimmer. A high score
#'   indicates a more pessimistic mindset.}
#'   \item{\code{Ratio}}{The ratio of swimming times for each trial -- trial1/trial2.
#'   An \code{Ratio} value > 1 indicates that a swimmer performed better on the second
#'   trial and vice-versa.}
#' }
#' @usage data("swim")
#' @note  The documentation does not auto-update. If one changes the base file,
#'   this documentation will no longer remain accurate.
#' @note 36-201 Homework 2 Data.
#' @note 36-202 Lab 2 Data.
#' @note Obtained from the Fall 2015 edition of 36-201.
"swim"









