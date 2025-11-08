############################################################
# 00_requirements.R
# Purpose: Install and load all required packages for the 
# STAT107 NBA 2024 Player Statistics Project.
############################################################

# ---------------------------
# Project Path Management
# ---------------------------

if (!require(here)) {
  install.packages("here")
  library(here)
}

# ---------------------------
# Data Import & Manipulation
# ---------------------------

if (!require(tidyverse)) {
  install.packages("tidyverse")
  library(tidyverse)
}

if (!require(readr)) {
  install.packages("readr")
  library(readr)
}

if (!require(janitor)) {
  install.packages("janitor")
  library(janitor)
}

if (!require(skimr)) {
  install.packages("skimr")
  library(skimr)
}

# ---------------------------
# Visualization Packages
# ---------------------------

if (!require(GGally)) {
  install.packages("GGally")
  library(GGally)
}

if (!require(corrplot)) {
  install.packages("corrplot")
  library(corrplot)
}

if (!require(patchwork)) {
  install.packages("patchwork")
  library(patchwork)
}

if (!require(ggthemes)) {
  install.packages("ggthemes")
  library(ggthemes)
}

# ---------------------------
# Modeling (Regression + Classification)
# ---------------------------

# Main modeling framework
if (!require(tidymodels)) {
  install.packages("tidymodels")
  library(tidymodels)
}

# Regularized regression (LASSO, Ridge, Elastic Net)
if (!require(glmnet)) {
  install.packages("glmnet")
  library(glmnet)
}

# OLS regression diagnostics and model selection tools
if (!require(olsrr)) {
  install.packages("olsrr")
  library(olsrr)
}


# ---------------------------
# Reporting / R Markdown
# ---------------------------

if (!require(knitr)) {
  install.packages("knitr")
  library(knitr)
}

if (!require(rmarkdown)) {
  install.packages("rmarkdown")
  library(rmarkdown)
}

# ---------------------------
# Global Reproducibility Settings
# ---------------------------

set.seed(107)
options(stringsAsFactors = FALSE)

message("All required packages successfully installed and loaded.")

