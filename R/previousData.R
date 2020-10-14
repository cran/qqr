#' Get data from previous years of the Brazilian soccer championship
#'
#' Number of points, victories, defeats, ties and more info about the Brazilian soccer championship of a year from 2015 to 2019
#' @param year The year of the championship for which the table is desired
#' @return An object with class \emph{tabelaBR} containing the information of the Brazilian soccer championship from the year desired.
#' @encoding UTF-8
#' @import xml2
#' @import rvest
#' @import tidyverse
#' @export
#' @examples
#' previousData(2019)
previousData <- function(year){
  site <- xml2::read_html(paste0("https://especiais.gazetadopovo.com.br/futebol/tabela-campeonato-brasileiro-" , year))
  tabela <- site %>% rvest::html_nodes("table") %>% html_table(trim = F, fill = T)
  tabela <- tabela[[1]]
  colnames(tabela)[1] = "Posicao"
  colnames(tabela)[2] = "Time"
  class(tabela) = 'tabelaBR'
  return(tabela)
}
