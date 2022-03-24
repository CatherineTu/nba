nba <- read.csv("C:\\Users\\hongc\\Desktop\\repo\\gr5072-homework-5-CatherineTu\\data\\raw\\Seasons_Stats_NBA.csv")

#' A nbapackage function
#'
#' This function allows you to get a data point of interest in the dataset for some player from a year
#' @param year season you chose
#' @keywords points
#' @export
#' @examples
#' nba_point()



nba_point <- function(year) {
  nba_year <- dplyr::filter(nba, Year == year)
  return(dplyr::filter(nba_year, PTS == max(nba_year$PTS)))
}
