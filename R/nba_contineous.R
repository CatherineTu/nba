nba <- read.csv("C:\\Users\\hongc\\Desktop\\repo\\gr5072-homework-5-CatherineTu\\data\\raw\\Seasons_Stats_NBA.csv")

#' A nbapackage function
#'
#' This function allows you to get a data point of interest in the dataset for some player from a year
#' @param year season you chose
#' @keywords continuous correlation matrix
#' @export
#' @examples
#' nba_contineous()

nba_contineous <- function(year) {
  nba_year <- dplyr::filter(nba, Year == year)
  nba_year_cont <- nba_year[, sapply(nba_year, is.numeric)]
  return(cor(nba_year_cont))
}

