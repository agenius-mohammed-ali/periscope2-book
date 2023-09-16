library(dplyr)
library(tidyr)
library(tibble)
library(canvasXpress)

canvasXpress(
    data              = data.frame(mpg = mtcars$mpg),
    graphType         = "Scatter2D",
    #histogramBins    = 5, # number of intervals
    histogramBinWidth = 3, #interval width
    title             = "MPG Histogram",
    xAxisTitle        = "MPG",
    yAxisTitle        = "Frequency",
    showLegend        = FALSE,
    histogramData     = TRUE
)

canvasXpress(
    data               = data.frame(mpg = mtcars$mpg),
    graphType          = "Scatter2D",
    histogramAsDotplot = TRUE,
    histogramBinWidth  = 3, #interval width
    title              = "MPG Histogram as DotPlot",
    xAxisTitle         = "MPG",
    yAxisTitle         = "Frequency",
    showLegend         = FALSE,
    histogramData      = TRUE
)

