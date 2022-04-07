
# Install devtools
if ("devtools" %in% installed.packages() == F) {
    install.packages("devtools")
}

if ("rmarkdown" %in% installed.packages() == F) {
    install.packages("devtools")
}

# Install the most recent version of the RHoMIS R-package
devtools::install_github("git@github.com:l-gorman/rhomis-R-package.git", force = T)

file.create("00-preprocessing.R")