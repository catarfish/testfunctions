
#' A function to make water boxplot by WY
#'
#' This function makes plots of WQ
#'
#' @param y Environmental parameter
#'
#' @param data dataframe, which should include a StationCode column for you station and WY column for water year
#'
#' @keywords QAQC
#'
#' @export
#'
#' @examples
#' Yearbox(YBFMP_WQ, Conductivity)
#'
Yearbox <-  function(data,y) {
  y <- enquo(y)
  data %>%
    ggplot2::ggplot() +
    ggplot2::geom_boxplot(mapping = aes(factor(WY),!! y,fill = StationCode)) +
    ggplot2::theme_bw() +
    ggplot2::theme(panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          panel.border = element_blank(),
          axis.line = element_line(colour = "black"),
          plot.title = element_text(hjust=0.5),
          axis.text = element_text(size = 11),
          axis.text.x = element_text(angle = 90, hjust = 1),
          axis.title = element_text(size = 12),
          legend.text = element_text(size = 11),
          legend.position = "bottom")
}




#' A function to make histograms by station and parameter
#'
#' This function makes plots of water quality
#'
#' @param y Environmental parameter
#'
#' @param bin Histogram binwidth
#'
#' @param data dataframe, which should include a StationCode column for you station
#'
#' @keywords QAQC
#'
#' @export
#'
#' @examples
#' VisHist(YBFMP_WQ, Conductivity, 10)
#'
VisHist <-  function(data,y, bin) {
  y <- enquo(y)
  data %>%
    ggplot2::ggplot() +
    ggplot2::geom_histogram(mapping = aes(!! y,col = StationCode),binwidth = bin, fill = "lightseagreen", colour = "lightgray") +
    ggplot2::facet_wrap(~StationCode, scales = "free_x") +
    ggplot2::theme_bw() +
    ggplot2::theme(panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          panel.border = element_blank(),
          axis.line = element_line(colour = "black"),
          plot.title = element_text(hjust=0.5),
          axis.text = element_text(size = 11),
          axis.text.x = element_text(angle = 90, hjust = 1),
          axis.title = element_text(size = 12),
          legend.text = element_text(size = 11))
}


#' A function to make plot by two variables
#'
#' This function makes plots of water quality
#'
#' @param y Environmental parameter
#'
#' @param data dataframe, which should include a StationCode column for your station
#'
#' @keywords QAQC
#'
#' @export
#'
#' @examples
#' PlotVars(YBFMP_WQ, Conductivity, WaterTemperature)
#'
PlotVars <- function(data,x, y) {
  y <- enquo(x)
  z <- enquo(y)
  data %>%
    ggplot2::ggplot() +
    ggplot2::geom_point(mapping = aes(x, y, col = StationCode)) +
    ggplot2::theme_bw() +
    #scale_colour_manual(values = c("#F3B2FF", "#106E83", "#FFC971", "#BAFF87")) +
    ggplot2::theme(panel.grid.major = element_blank(),
          panel.border = element_blank(),
          axis.line = element_line(colour = "black"),
          plot.title = element_text(hjust=0.5),
          axis.text = element_text(size = 11),
          axis.text.x = element_text(angle = 90, hjust = 1),
          axis.title = element_text(size = 12),
          legend.text = element_text(size = 11))
}
