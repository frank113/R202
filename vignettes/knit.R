## ----setup, echo=FALSE, include = FALSE----------------------------------
library(R202)
library(ggplot2)
library(dplyr)

load("../R/sysdata.rda")
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.align = "center",
  warning = FALSE,
  message = FALSE,
  echo = FALSE,
  fig.width = 7,
  height = 6
)

axis.size <- 20
font <- "Times"

vignette.theme <- theme(rect = element_rect(fill = "white", 
                                            colour = "black", size = 0.5), 
                        text = element_text(face = "plain", colour = "black", 
                                            size = 11, hjust = 0.5, 
                                            vjust = 0.5, angle = 0, 
                                            lineheight = 0), 
                        axis.title.x = element_text(size = axis.size, vjust = 1, 
                                             family = font), 
                        axis.title.y = element_text(size = axis.size, angle = 90, 
                                                    vjust = 1), 
                        axis.text.x = element_text(size = 15, vjust = 1), 
                        axis.text.y = element_text(size = 15, hjust = 1), 
                        axis.ticks = element_line(size = 0, colour = "grey20"), 
                        plot.title = element_text(family = font, face = "bold", 
                                                  size = 25, hjust = 0.5, 
                                                  vjust = 1))

