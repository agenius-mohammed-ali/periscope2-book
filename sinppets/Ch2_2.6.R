library(dplyr)
library(tidyr)
library(tibble)
library(canvasXpress)

canvasXpress(
    data             = t(data.frame(mpg = mtcars$mpg)),
    graphType        = "Boxplot",
    title            = "MPG Histogram as DotPlot",
    xAxisTitle       = "Frequency",
    smpTitle         = "MPG",
    showLegend       = FALSE,
    graphOrientation = "vertical"
)

