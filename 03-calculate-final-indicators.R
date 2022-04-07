library(rhomis)

proj_id <- ""
form_id <- ""

new_units <- processData(
    extractUnitsOnly = F, # The stage of data processing
    calculateFinalIndicatorsOnly = T, # The stage of data processing

    # Arguments to indicate the type of processing being done (local or on server)
    dataSource = "csv",
    outputType = "csv",

    # Arguments used for processing local data sets
    dataFilePath = "raw-data/sample_project.csv",
    id_type = "string",
    proj_id = proj_id,
    form_id = form_id
)