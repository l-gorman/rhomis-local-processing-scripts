# usr/bin/env Rscript

#' Value calculations
#' 
#' This is a test Rscript for those using the RHoMIS 
#' R package locally. This demonstrates how locally 
#' generated outputs can be used to calculate the 
#' values of products consumed.
#' 
#' If you need to install or update the RHoMIS package, enter the command (please ensure you have the "devtools" package installed):
#' 
#' devtools::install_github("git@github.com:l-gorman/rhomis-R-package.git")

library(rhomis)
library(readr)

list.files("crop_data/")

indicators <-  readr::read_csv("./indicators/indicators.csv", 
                               col_types = readr::cols())


# Value crop consumed

crop_consumed <- readr::read_csv("./crop_data/crop_consumed_kg_per_year.csv", 
                                 col_types = readr::cols())

mean_crop_prices <- readr::read_csv("./mean_prices/crop_prices.csv",
                                    col_types = readr::cols(), na = "Inf")

# check that the orders of the data frames are the same
if (ncol(crop_consumed)!=ncol(mean_crop_prices)){
  stop("Different numbers of columns in crop consumed and crop prices")
}
# Check all of the columns are present in both datasets
if (all(colnames(crop_consumed)%in%colnames(mean_crop_prices))==F |
    all(colnames(mean_crop_prices)%in%colnames(crop_consumed))==F){
  stop("Different column names crop consumed and crop prices")
}
# Check all of the columns are the same order in both datasets
if (all(colnames(crop_consumed)==colnames(mean_crop_prices))==F |
    all(colnames(mean_crop_prices)==colnames(crop_consumed))==F){
  stop("Different column names crop consumed and crop prices")
}

value_crop_consumed <- crop_consumed*as.numeric(mean_crop_prices[1,])/indicators$conversion_factor


# Value Egg Consumed
egg_consumed <- readr::read_csv("./livestock_data/eggs_consumed_kg_per_year.csv", 
                                 col_types = readr::cols())

mean_egg_prices <- readr::read_csv("./mean_prices/egg_price_per_kg.csv",
                                    col_types = readr::cols(), na = "Inf")

value_egg_consumed <- egg_consumed*as.numeric(mean_egg_prices[1,])/indicators$conversion_factor


# Alternatively, you could use the actual reported prices

egg_prices_all <- readr::read_csv("./livestock_data/eggs_price_per_kg.csv",
                                   col_types = readr::cols())

value_egg_consumed <- egg_consumed*egg_prices_all/indicators$conversion_factor


