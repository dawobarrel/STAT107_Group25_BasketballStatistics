# STAT107_Group25_Repository
Project Title
Analysis of 2024 NBA Player Statistics Using R

Overview
This repository contains all code, data, and documentation for our STAT 107 half-way project. The goal of the project is to analyze NBA player performance for the 2024 season using statistical computation techniques in R and RStudio.

This project includes a script named 00_requirements.R, located in the root directory of the repository.
The purpose of this file is to ensure that all required R packages used throughout the analysis are installed and loaded consistently across all machines. This supports the reproducibility standards outlined in the course project instructions.
The script performs the following functions:
Checks whether each required package is installed.
Automatically installs any missing packages.
Loads all necessary libraries into the R session.
Applies global reproducibility settings.
Prints a confirmation message once all dependencies are available.
This script eliminates the need for users to manually install packages.

How to Use 00_requirements.R
To make sure the project runs correctly, this script should be executed before running any analysis, functions, or report files. The file must be sourced at the top of every R script and every R Markdown file used in the project.
In an R Script (.R):
Place the following line at the top of the file:
source(here::here("00_requirements.R"))
In an R Markdown File (.Rmd):
Include the line inside the setup chunk:
```{r setup}
source(here::here("00_requirements.R"))
```


Description of files:

Data Files(csv)
Contains raw dataset used in the analysis.
nba2024.csv — main dataset of player statistics for the 2024 NBA season.

Function Files(code)
Had no need to create functions.

Anaylsis Files(Rmd)
11_DataCleaning - Renamed variables for better readability. Filtered players that had played for multiple teams throughout season into one single profile. Filtered out players with less than 20 games played to remove instability from per game averages. Loaded cleaned data into repository for loading in future analysis.

Correlation Analysis - Provides an exploratory analysis of NBA player statistics using correlation heatmaps, pair plots, and summary visualizations. Identifies relationships among variables and highlights which metrics are most strongly associated, helping guide variable selection for later modeling.

 Regression Analysis - Builds predictive models to analyze scoring and ranking outcomes. Includes linear regression for predicting points and ranking, and multinomial logistic regression for classifying players into performance tiers. Evaluates model performance and identifies key variables that significantly influence player impact.

Final Report - Provides the rmd file for our final report including the necessary graphs and visualizatons in helping conclude our findings.


