# usr/bin/env Rscript

#' Extract values
#' 
#' This is a test Rscript for those using the RHoMIS 
#' R package locally. This uses a more general "processData"
#' function which draws on multiple functions form the R package.
#' 
#' This function extracts new units and spellings from a RHoMIS survey
#' 
#' If you need to install or update the RHoMIS package, enter the command (please ensure you have the "devtools" package installed):
#' 
#' devtools::install_github("git@github.com:l-gorman/rhomis-R-package.git")
#' 
library(rhomis)

survey_file_path <- "./Raw_Data.csv"

processData(dataSource="csv",
            outputType="csv",
            extractUnits=T,
            processDataSet=F,
            dataFilePath=survey_file_path)



