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

canvasXpress(
    data             = freq_data,
    graphOrientation = "vertical",
    graphType        = "Pie",
    title            = "Cyl Distribution"
)

