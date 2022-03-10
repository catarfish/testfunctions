
### Make a boxplot with any parameter by Station and WY.

Yearbox <-  function(data,y) {
  y <- enquo(y)
  data %>%
    ggplot() +
    geom_boxplot(mapping = aes(factor(WY),!! y,fill = StationCode)) +
    theme_bw() +
    theme(panel.grid.major = element_blank(),
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

# Monthly boxplot, y = variable of interest
Monthbox <-  function(data,y) {
  y <- enquo(y)
  data %>%
    ggplot() +
    geom_boxplot(mapping = aes(MonthAbb,!! y,fill = StationCode)) +
    theme_bw() +
    theme(panel.grid.major = element_blank(),
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

# Point plot by date. Y = Variable of interest
VisPoint <-  function(data,y) {
  y <- enquo(y)
  data %>%
    ggplot() +
    geom_point(mapping = aes(Datetime,!! y,col = StationCode), size = 2) +
    theme_bw() +
    theme(panel.grid.major = element_blank(),
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

# Histogram by Station, y = variable of interest, binwidth
VisHist <-  function(data,y, bin) {
  y <- enquo(y)
  data %>%
    ggplot() +
    geom_histogram(mapping = aes(!! y,col = StationCode),binwidth = bin, fill = "lightseagreen", colour = "lightgray") +
    facet_wrap(~StationCode, scales = "free_x") +
    theme_bw() +
    theme(panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          panel.border = element_blank(),
          axis.line = element_line(colour = "black"),
          plot.title = element_text(hjust=0.5),
          axis.text = element_text(size = 11),
          axis.text.x = element_text(angle = 90, hjust = 1),
          axis.title = element_text(size = 12),
          legend.text = element_text(size = 11))
}

# Plot date vs. variable of interest, specifically for Lisbon
PlotVars <- function(data,y) {
  y <- enquo(y)
  data %>%
    ggplot() +
    geom_point(mapping = aes(Datetime,!! y, col = StationCode)) +
    theme_bw() +
    #scale_colour_manual(values = c("#F3B2FF", "#106E83", "#FFC971", "#BAFF87")) +
    theme(panel.grid.major = element_blank(),
          panel.border = element_blank(),
          axis.line = element_line(colour = "black"),
          plot.title = element_text(hjust=0.5),
          axis.text = element_text(size = 11),
          axis.text.x = element_text(angle = 90, hjust = 1),
          axis.title = element_text(size = 12),
          legend.text = element_text(size = 11))
}
