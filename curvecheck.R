library(ggplot2)
library(arrow)

# licor parquet file
path_to_read <- "/Users/rileyleff/Desktop/ilex_rapidaci.parquet"

# convert to dataframe
df <- arrow::read_parquet(path_to_read)

# ACi Curve
ggplot(data = df) + 
    aes(x = Ci, y = A) +
    geom_point()

# LR Curve

    # light columns
    # print(df[,which(grepl("q", colnames(df)))], n= 100)

ggplot(data = df) + 
    aes(x = Ci, y = A) +
    geom_point()

# Fluorometer

