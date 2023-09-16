library(dplyr)
library(tidyr)
library(tibble)
library(canvasXpress)

freq_data <- mtcars %>%
    group_by(cyl) %>%
    select(cyl) %>%
    summarise(Frequency = n()) %>%
    as.data.frame() %>%
    column_to_rownames("cyl") %>%
    rename(Cyl = Frequency)

rel_freq_data <- freq_data %>%
    mutate(Cyl = round(100 * Cyl/sum(Cyl), 0))

canvasXpress(
    data             = freq_data,
    graphOrientation ="vertical",
    graphType        = "Bar",
    smpLabelRotate   = 90,
    title            = "Barplot Cyl Distribution",
    xAxisTitle       = "Distribution"
)

canvasXpress(
    data             = rel_freq_data,
    graphOrientation ="vertical",
    graphType        = "Bar",
    smpLabelRotate   = 90,
    title            = "Barplot Cyl Relative Distribution",
    xAxisTitle       = "Distribution(%)"
)

canvasXpress(
    data             = freq_data,
    graphOrientation ="vertical",
    graphType        = "Stacked",
    smpLabelRotate   = 90,
    title            = "Stacked Cyl Distribution",
    xAxisTitle       = "Distribution"
)

canvasXpress(
    data             = rel_freq_data,
    graphOrientation ="vertical",
    graphType        = "StackedPercent",
    smpLabelRotate   = 90,
    title            = "Stacked Cyl Relative Distribution",
    xAxisTitle       = "Distribution(%)"
)

