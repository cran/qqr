#' Get current data of the Brazilian soccer championship
#'
#' Number of points, victories, defeats, ties and more info about the current Brazilian soccer championship
#' @return An object with class \emph{tabelaBR} containing the information of the Brazilian soccer championship from the year desired.
#' @encoding UTF-8
#' @import xml2
#' @import rvest
#' @import tidyverse
#' @import stringr
#' @import dplyr
#' @export
#' @examples
#' currentData()
currentData <- function(){
  site <- xml2::read_html("https://brasileirao.cbf.com.br/tabela-times")
  tabela <- site %>% rvest::html_table(fill = TRUE)
  tabela = tabela[[1]]
  col = colnames(tabela)
  col[2] = "Time"
  col[8] = "GC"
  col[9] = "GP"
  colnames(tabela) = col
  Recentes=""
  tabela = tabela %>% dplyr::mutate(Recentes  = stringr::str_replace_all(Recentes,"\t",""),
                             Recentes  = stringr::str_replace_all(Recentes,"\n","")) %>%
    dplyr::select(-15)
  class(tabela) = "tabelaBR"
  return(tabela)
}
