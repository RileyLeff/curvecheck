sync_data_processing <- function(path_in, path_out, ...) {
    
}

# in a sane world we would have this:
# x <- licorclient::file_to_dataframe(
#     "data/raw/real/aci/2025-07-30-1310_logdata_ilex812_sun_aci_3", 
#     "data.frame", 
#     "6800", 
#     "standard", 
#     FALSE
# )

system2(
    command = "licor", 
    args = c(
        "convert", 
        "--device", "6800", 
        "--config", "standard", 
        "--input", shQuote("data/raw/real/aci/*"), 
        "--output", "data/converted/real/aci/"
    )
)

system2(
    command = "licor", 
    args = c(
        "convert", 
        "--device", "6800", 
        "--config", "standard", 
        "--input", shQuote("data/raw/real/lr/*"), 
        "--output", "data/converted/real/lr/"
    )
)