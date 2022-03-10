#' c2f
#'
#' Convert celsius to fahrenheit.
#'
#' @param x A vector of temperature values in celsius
#' @return A vector of fahrenheit values
#'
#' @export
#'
#'
#'

c2f <- function(x) {
  F = (x * 9/5) + 32
  return(F)
}
