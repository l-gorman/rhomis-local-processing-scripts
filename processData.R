# usr/bin/env Rscript

#' Extract values
#'
#' This is a test Rscript for those using the RHoMIS
#' R package locally. This uses a more general "processData"
#' function which draws on multiple functions form the R package.
#'
#' This script standardises values, calculates indicators and calculates extra outputs.
#'
#' If you need to install or update the RHoMIS package, enter the command (please ensure you have the "devtools" package installed):
#'
#' devtools::install_github("git@github.com:l-gorman/rhomis-R-package.git", force=T)
#'

library(rhomis)

survey_file_path <- "./raw-data/rhomis_data.csv"

processData(
    dataSource = "csv",
    outputType = "csv",
    extractUnits = F,
    processDataSet = T,
    dataFilePath = survey_file_path
)