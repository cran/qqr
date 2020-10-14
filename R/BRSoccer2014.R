#' Table of the 2014th Brazilian Soccer Championship.
#'
#' This data set gives the position of each Brazilian soccer team
#' in the 2014th championship with the number of points, games played,
#' victories, ties, defeats, goal difference, goals scored and goals suffered.
#'
#' @format A data frame with 20 rows and 9 variables
#' \describe{
#'   \item{Times}{name of the teams}
#'   \item{P}{number of points scored (3 * V + E)}
#'   \item{J}{number of matches played (V + E + D)}
#'   \item{V}{number of victories}
#'   \item{E}{number of ties}
#'   \item{D}{number of defeats}
#'   \item{SG}{goals difference (G - GC)}
#'   \item{G}{goals scored}
#'   \item{GC}{goals suffered}
#' }
#' @source <https://www.tabeladobrasileirao.net/2014/serie-a/>
"BRSoccer2014"
