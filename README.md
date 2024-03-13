# TermPaper
R code for the Term paper

## Overview
This repository contains a suite of R scripts designed to perform a comprehensive analysis of campaign contributions data. The workflow is divided into three primary stages:

1. 01-download_data.R.R: Automates the download and preliminary processing of data.
2. 02-outlier_detection.R: Identifies and handles outliers in the dataset.
3. 03-GLM_regression.R: Conducts Generalized Linear Model (GLM) regression and subsequent analysis.
Follow the steps below to execute the analysis correctly.

## Data Preprocessing
Start with Data_preprocess.R. This script will:

- Automatically download the dataset from the specified source.
- Conduct initial data cleaning, which includes formatting columns, handling missing values, and encoding categorical variables.
Ensure that you have the necessary permissions to access the data source and sufficient storage for the dataset.

## Outlier Detection
Once preprocessing is complete, run Outlier_detection.R to:

- Detect anomalies in the dataset using statistical methods.
- Determine the best course of action for each outlier detected, whether it's exclusion, transformation, or imputation.
Outlier handling can significantly influence the outcome of the regression analysis.

## GLM Regression Analysis
Finally, execute GLM_regression.R to:

Perform a GLM regression to explore the relationship between the frequency of campaign contributions and the total amount received.
Generate and interpret regression diagnostics to evaluate the model's validity and the relationship's significance.
The GLM regression accommodates non-normal distributions, making it suitable for various types of response variables.

## Instructions
1. Clone the repository to your local machine.
2. Open RStudio or your preferred R environment.
3. Set your working directory to the location of the cloned repository.
4. Run the scripts in the order specified above, waiting for each script to complete before proceeding to the next.
## Requirements
Ensure you have R and the following packages installed:

- readxl
- httr
- jsonlite
- dplyr
- ggplot2
- opendatatoronto
- broom
- Any other package dependencies mentioned in the scripts.
## Support
For issues, questions, or contributions, please open an issue in this repository, and the maintainer will address it promptly.
