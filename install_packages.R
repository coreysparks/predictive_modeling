# Install all R packages required for the Predictive Modeling Book
# Run this script once to install all dependencies

# List of all packages used in the book
packages <- c(
  # Core data manipulation and visualization
  "readr",           # Reading data files
  "dplyr",           # Data wrangling
  "ggplot2",         # Visualization
  "tidyverse",       # Collection of data science packages
  "tidycensus",      # Access to US Census data

  # Machine learning and modeling
  "caret",           # Classification and regression training
  "glmnet",          # Lasso and elastic net regression
  "bestglm",         # Best subset regression
  "mice",            # Multiple imputation by chained equations
  "MASS",            # Statistical functions (LDA, stepAIC)

  # Classification and tree-based methods
  "rpart",           # Recursive partitioning (decision trees)
  "rpart.plot",      # Plotting rpart trees
  "tree",            # Classification and regression trees
  "randomForest",    # Random forests
  "rattle",          # GUI for data mining (includes fancyRpartPlot)
  "fastshap",        # SHAP values for any ML model
  "shapviz",         # SHAP visualization

  # Performance evaluation
  "pROC",            # ROC curves and AUC

  # Clustering and unsupervised learning
  "cluster",         # Clustering algorithms
  "factoextra",      # Extract and visualize clustering results
  "ClusterR",        # Clustering algorithms (KMeans_rcpp)
  "scorecard",       # Scorecard development
  "class",           # K-nearest neighbors and other classifiers

  # Time series analysis
  "forecast",        # Forecasting and time series
  "ggfortify",       # Fortified geom for time series

  # Demographic methods
  "demography",      # Demographic analysis and mortality modeling
  "StMoMo",          # Stochastic mortality modeling
  "HMDHFDplus",      # Access Human Mortality/Fertility Databases
  "demogR",          # Demographic calculations (Leslie matrix)
  "fds",             # Functional data structures

  # Smoothing and GAM
  "mgcv",            # Generalized additive models

  # Visualization and graphics
  "colorspace",      # Color space manipulation
  "gridExtra",       # Grid graphics utilities
  "cowplot",         # Publication-quality plots
  "RColorBrewer"     # Color palettes
)

# Check which packages are not installed
not_installed <- packages[!(packages %in% rownames(installed.packages()))]

if (length(not_installed) > 0) {
  cat("Installing", length(not_installed), "missing packages...\n")

  # Try CRAN installation first
  install.packages(not_installed, dependencies = TRUE, quiet = FALSE)

  # Check if HMDHFDplus failed (sometimes needs special handling)
  if (!("HMDHFDplus" %in% rownames(installed.packages()))) {
    cat("\nNote: HMDHFDplus requires authentication with HMD.\n")
    cat("If installation failed, visit https://www.mortality.org/ to register.\n")
    cat("You can install it with: install.packages('HMDHFDplus')\n")
  }

  # Check if demogR failed (older package)
  if (!("demogR" %in% rownames(installed.packages()))) {
    cat("\nNote: demogR is an older package. Attempting install from archive...\n")
    tryCatch(
      install.packages("demogR", repos = "http://r-forge.r-project.org"),
      error = function(e) {
        cat("demogR installation failed. This package is optional.\n")
        cat("Error message:", conditionMessage(e), "\n")
      }
    )
  }

} else {
  cat("All packages are already installed!\n")
}

# Verify installation
cat("\n=== Installation Summary ===\n")
installed_check <- packages %in% rownames(installed.packages())
installed_count <- sum(installed_check)
total_count <- length(packages)

cat("Installed:", installed_count, "/", total_count, "packages\n")

if (installed_count < total_count) {
  missing <- packages[!installed_check]
  cat("\nMissing packages:\n")
  for (pkg in missing) {
    cat("-", pkg, "\n")
  }
  cat("\nThese are optional or require special setup.\n")
}

cat("\nYou can now render the book with: quarto render\n")
