#'@title Print for \code{tabelaBR} objects
#'@description Print objects with class \emph{tabelaBR}.
#'@usage \method{print}{tabelaBR}(x,...)
#'@param x An object with class \emph{tabelaBR}.
#'@param ... further arguments passed to or from other methods.
#'@seealso \code{\link{previousData}}, \code{\link{currentData}}
#'@examples
#'tabela = previousData(2019)
#'print(tabela)
#'@export
print.tabelaBR  = function(x,...){
  class(x) = "data.frame"

  cat("----------------------BRAZILIAN SOCCER CHAMPIONSHIP----------------------\n")
  print(x)
  cat("-------------------------------------------------------------------------")
}
