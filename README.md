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

Correlation Analysis - The correlation analysis provides an initial exploratory view of how player statistics relate to one another. Using heatmaps, pair plots, and summary statistics, we identify clusters of highly related variables and isolate the most influential performance metrics.
Key findings include:
Field Goal Attempts (FGA) shows a near-perfect correlation with Points per Game (PTS), confirming that shot volume is the primary driver of scoring.
Minutes Played (MP), Assists (AST), and Rebounds (TRB) form strong positive clusters with other performance metrics, reflecting broader offensive involvement.
Efficiency metrics such as Effective Field Goal Percentage (eFG%) are moderately correlated with scoring and help differentiate high-impact players.
Age displays weak correlations with most performance variables, suggesting that player impact is driven more by role and usage than by age alone.
The correlation analysis guided variable selection for later modeling and highlighted which predictors may introduce multicollinearity issues.

2. Linear Regression Analysis
a. Predicting Points (PTS)
Linear regression models were built to identify which statistics best predict scoring output.
Including FGA results in a highly accurate but unsurprising model, given its extreme correlation with PTS.
Excluding FGA shifts importance to eFG%, AST, TRB, and TOV, showing that scoring is also explained by efficiency, offensive role, and overall involvement.
Diagnostic checks confirmed that model assumptions were reasonably met and that the models generalized well.
This analysis demonstrates how different aspects of performance contribute to point production beyond sheer shot volume.
b. Predicting Numeric Ranking
A linear regression model was used to predict player ranking (Rk) as a continuous variable.
The model achieved moderate accuracy (RMSE ~38–42), indicating that performance statistics do capture some ranking structure.
Training and testing errors were similar, suggesting the model identifies general patterns rather than overfitting.
However, predicting precise rank values is limited by the nonlinear and subjective nature of ranking systems.
This analysis highlights the challenges of treating rank as a continuous variable but still reveals useful insights into performance factors tied to ranking.
3. Multinomial Logistic Regression for Ranking Tiers
To improve interpretability and stability, player rankings were grouped into four tiers:
Elite (Top 50)
Above Average
Role Player
Low Impact
A multinomial logistic regression model was used to predict tier membership based on performance metrics such as PTS, MP, AST, TRB, STL, BLK, eFG%, TOV, and Age.
Key results:
The model achieved very high accuracy on both training and testing sets, correctly classifying the majority of players across all tiers.
Efficiency (eFG%), scoring volume (PTS), minutes played (MP), steals (STL), and assists (AST) emerged as the most influential predictors separating elite players from lower-tier ones.
Age and some defensive statistics played smaller roles, consistent with earlier correlation findings.
Some comparisons exhibited quasi-complete separation, indicating strong statistical differences between tiers—especially Elite vs. Low-tier players.
This tier-based approach proved far more robust and interpretable than predicting exact ranking values.
🏁 Overall Takeaways
Shot volume, efficiency, and offensive involvement consistently appear as the strongest predictors of scoring and player impact.
eFG%, PTS, and MP are key variables that distinguish higher-tier players, demonstrating both statistical and practical significance.
Predicting exact ranking is challenging, but predicting ranking tiers using multinomial logistic regression produces accurate and meaningful results.
Combining correlation analysis with linear and multinomial models provides a comprehensive understanding of player performance dynamic

Report File
.....

