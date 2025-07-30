library(ggplot2)
library(arrow)

# licor parquet file
path_to_read <- "/Users/rileyleff/Desktop/2025-07-30-1639_logdata_ilex564_sun_aci_1.parquet"

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

