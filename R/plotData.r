# Yearly boxplot, y = variable of interest
#' yearbox
#'
#' @param data dataframe
#' @param x x axis
#' @param y y axis
#' @param fillby view by
#'
#' @return
#' @export
#'
#' @examples
#'
#'
yearbox <-  function(data, x, y, fillby) {
  x <- enquo(x)
  y <- enquo(y)
  fillby <- enquo(fillby)
  data %>%
    ggplot2::ggplot() +
    ggplot2::geom_boxplot(mapping = aes(factor(!! x),!! y,fill = !! fillby)) +
    ggplot2::theme_bw()
}
