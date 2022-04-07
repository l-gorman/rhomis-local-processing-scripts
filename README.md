# RHoMIS 2.0 Local Processing Scripts

This is a suggested setup for processing RHoMIS data sets locally, using the [RHoMIS R-package](https://github.com/l-gorman/rhomis-R-package).

## 1. Installing the Package

If you would like to install the package yourself, please enter the command:

```
devtools::install_github("git@github.com:l-gorman/rhomis-R-package.git")
```

## 2. Getting the Code

### Using the Command Line

This is a folder showing how to process projects locally
using the RHoMIS R-package. If you are familiar with using the command line, and have git installed, you can clone and rename the repository using the command:

`git clone https://github.com/l-gorman/rhomis-local-processing-scripts.git PROJECT_NAME`

*Replace `PROJECT_NAME` with the project name you would like to use.*

### Manual Download

Alternatively, download the whole repository by selecting the drop-down menu labelled 'code', then selecting the 'Download ZIP' option. Once you have downloaded the zip, extract the files into a folder where you would like to conduct the analysis. It can be helpful to give this folder a meaningful name (e.g. a project name)

## 3. Processing Datasets

There are R scripts located in this directory. Numbered in the order
which they should be used. 

00. Preprocessing: This preprocesses the data, cleaning anything
specific to the project. For example replacing village names, removing outliers etc..
01. Unit Extraction: All project units are extracted
02. Initial Calculation: Initial indicators are calculated, and prices are extracted,
awaiting verification.
03. Final Calculation: Using prices and calorie conversions, final
indicators are calculated.

## Suggesting Changes

Please report any problems you encounter in the issues section of [this repo](https://github.com/l-gorman/rhomis-local-processing-scripts). 