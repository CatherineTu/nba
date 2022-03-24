nba <- read.csv("C:\\Users\\hongc\\Desktop\\repo\\gr5072-homework-5-CatherineTu\\data\\raw\\Seasons_Stats_NBA.csv")

#' A nbapackage function
#'
#' This function allows you to get the correlation matrix for all numeric variables in the data for a year
#' @param year season you chose
#' @keywords oldest player
#' @export
#' @examples
#' nba_oldest()

nba_oldest <- function(year) {
  nba_year <- dplyr::filter(nba, Year == year)
  nba_year_oldest <- dplyr::filter(nba_year, Age == max(nba_year$Age))
  return(dplyr::top_n(nba_year_oldest, 1))
}

