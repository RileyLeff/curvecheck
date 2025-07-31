library(arrow)
library(RcppTOML)

config <- RcppTOML::parseTOML("config.toml")
folders_of_interest <- paste(config$path_to_data, config$valid_folders, sep = "/")

x <- licorclient::file_to_dataframe(
    "data/raw/real/aci/2025-07-30-1310_logdata_ilex812_sun_aci_3", 
    "data.frame", 
    "6800", 
    "standard", 
    FALSE
)

# licor parquet file
path_to_read <- ""

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

