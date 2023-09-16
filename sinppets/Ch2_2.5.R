library(dplyr)
library(tidyr)
library(tibble)
library(canvasXpress)

canvasXpress(
    data                       = data.frame(mpg = mtcars$mpg),
    graphType                  = "Scatter2D",
    title                      = "MPG Histogram",
    xAxisTitle                 = "MPG",
    yAxisTitle                 = "Frequency",
    showLegend                 = FALSE,
    hideHistogram              = TRUE,
    histogramData              = TRUE,
    showHistogramDensity       = TRUE,
    showFilledHistogramDensity = TRUE,
    showHistogramMedian        = TRUE
)

canvasXpress(
    data                 = data.frame(mpg = mtcars$mpg),
    graphType            = "Scatter2D",
    histogramBinWidth    = 3, #interval width
    title                = "MPG Histogram as DotPlot",
    xAxisTitle           = "MPG",
    yAxisTitle           = "Frequency",
    showLegend           = FALSE,
    histogramData        = TRUE,
    showHistogramDensity = TRUE,
)

