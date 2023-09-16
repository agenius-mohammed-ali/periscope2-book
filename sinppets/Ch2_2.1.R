data_types    <- read.csv("data/data_types_order.csv")
types_classes <- read.csv("data/data_types.csv")
rownames(types_classes) <- types_classes$Data_Type

canvasXpress::canvasXpress(
    data      = data_types,
    smpAnnot  = types_classes,
    graphType = "Tree",
    hierarchy = list("Feature Type", "Class"),
    colorBy   = "Covered",
    title     = "Features Classification"
)
