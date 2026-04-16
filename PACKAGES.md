# R Package Dependencies Reference

This document describes all R packages used in the book and which chapters require them.

## Quick Install

Run this to install all packages at once:

```r
source("install_packages.R")
```

## Package by Chapter

### **Chapter 1: What is Predictive Modeling?**
- `readr` — Read CSV files from URLs
- `dplyr` — Data manipulation (filter, select, mutate)
- `caret` — Model training and cross-validation
- `ggplot2` — Data visualization
- `rpart.plot` — Plot decision trees

### **Chapter 2: Lasso and Regularized Regression**
- `dplyr` — Data manipulation
- `MASS` — Generalized linear models (glm), stepAIC
- `mice` — Handle missing data with multiple imputation
- `bestglm` — Best subset regression
- `glmnet` — Lasso, ridge, elastic net regularization
- `ggplot2` — Visualization
- `haven` — Read DHS STATA files
- `caret` — Model training

### **Chapter 3: Basic Classification**
- `haven` — Read STATA data files
- `dplyr` — Data manipulation
- `caret` — Data partitioning, confusion matrix
- `ggplot2` — Visualize predictions
- `rpart` — Decision trees (RPART)
- `rpart.plot` — Plot RPART trees
- `MASS` — Linear discriminant analysis (lda)

### **Chapter 4: Classification and Cross-Validation**
- `haven` — Read DHS data
- `dplyr` — Data manipulation
- `caret` — Cross-validation setup, model training
- `rpart` — Decision trees
- `pROC` — ROC curves and AUC calculations

### **Chapter 5: K-Nearest Neighbors**
- `haven` — Read data files
- `dplyr` — Data manipulation
- `caret` — KNN training, confusion matrices
- `rpart` — For comparison models
- `pROC` — ROC curve analysis

### **Chapter 6: Cluster Analysis**
- `readr` — Read CSV files
- `dplyr` — Data manipulation
- `caret` — Data partitioning
- `scorecard` — Clustering utilities
- `factoextra` — Visualization (fviz_dend, fviz_cluster, fviz_nbclust)
- `class` — k-NN classification
- `RColorBrewer` — Color palettes
- `ClusterR` — K-means implementation
- `cluster` — Cluster analysis algorithms
- `ggplot2` — Basic visualization

### **Chapter 7: Random Forests**
- `haven` — Read data files
- `dplyr` — Data manipulation
- `tree` — Regression trees (alternative to rpart)
- `mice` — Multiple imputation
- `randomForest` — Random forest models
- `caret` — Model training and evaluation
- `rpart.plot` — Tree visualization
- `rattle` — fancyRpartPlot for tree visualization
- `rpart` — Decision trees
- `pROC` — ROC curve analysis
- `ggplot2` — Visualization

### **Chapter 8: Time Series Analysis**
- `dplyr` — Data manipulation
- `ggplot2` — Visualization
- `ggfortify` — autoplot for time series
- `forecast` — Time series forecasting, ACF/PACF plots

### **Chapter 9: Population Projection**
- `tidyverse` — Data science workflow (includes ggplot2, dplyr, etc.)
- `HMDHFDplus` — Access Human Mortality & Fertility Databases (requires authentication)
- `tidycensus` — Access US Census data
- `demogR` — Demographic calculations (Leslie matrix)
- `demography` — Demographic analysis
- `StMoMo` — Stochastic mortality modeling
- `fds` — Functional data structures
- `colorspace` — Color space utilities
- `gridExtra` — Arrange multiple plots
- `cowplot` — Publication-quality plots
- `RColorBrewer` — Color palettes

### **Chapter 10: Lee-Carter Model**
- `demography` — Demographic functions, mortality modeling
- `ggplot2` — Visualization
- `tidyverse` — Data manipulation
- `StMoMo` — Stochastic mortality modeling
- `fds` — Functional data structures
- `mgcv` — Generalized additive models
- `dplyr` — Data manipulation
- `colorspace` — Colors
- `gridExtra` — Multi-plot arrangement
- `cowplot` — Publication plots
- `RColorBrewer` — Color palettes

## Package Categories

### Data Input/Output
| Package | Purpose |
|---------|---------|
| `readr` | Read CSV, TSV, and other delimited files |
| `haven` | Read STATA, SPSS, SAS files |
| `HMDHFDplus` | Download mortality and fertility data |
| `tidycensus` | Access Census Bureau API |

### Data Manipulation
| Package | Purpose |
|---------|---------|
| `dplyr` | Filter, select, arrange, mutate, summarize |
| `tidyverse` | Collection including dplyr, ggplot2, tidyr |
| `mice` | Multiple imputation for missing data |

### Visualization
| Package | Purpose |
|---------|---------|
| `ggplot2` | Grammar of graphics for visualization |
| `ggfortify` | Plotting for time series and models |
| `rpart.plot` | Visualize decision trees |
| `factoextra` | Enhanced cluster visualization |
| `RColorBrewer` | Color palettes |
| `cowplot` | Publication-quality multi-panel plots |
| `gridExtra` | Arrange multiple plots |
| `colorspace` | Color space manipulation |

### Machine Learning / Statistical Modeling
| Package | Purpose |
|---------|---------|
| `caret` | Model training, cross-validation, evaluation |
| `rpart` | Recursive partitioning (decision trees) |
| `tree` | Classification and regression trees |
| `randomForest` | Random forest models |
| `glmnet` | Lasso, ridge, elastic net regularization |
| `MASS` | Generalized linear models, LDA, stepAIC |
| `bestglm` | Best subset regression |
| `class` | K-nearest neighbors |
| `ClusterR` | Fast K-means clustering |
| `cluster` | Cluster analysis algorithms |
| `pROC` | ROC curves and AUC |

### Time Series & Forecasting
| Package | Purpose |
|---------|---------|
| `forecast` | Time series forecasting and analysis |
| `ggfortify` | Plotting for time series |

### Demographic Methods
| Package | Purpose |
|---------|---------|
| `demography` | Demographic analysis and modeling |
| `StMoMo` | Stochastic mortality modeling |
| `demogR` | Demographic calculations (Leslie matrix) |
| `fds` | Functional data structures |

### Statistical Modeling
| Package | Purpose |
|---------|---------|
| `mgcv` | Generalized additive models |
| `rattle` | GUI and visualization for data mining |
| `scorecard` | Scorecard development utilities |

## Installation Statistics

- **Total packages:** 34
- **Must-haves:** 13 (caret, dplyr, ggplot2, glmnet, MASS, rpart, haven, readr, forecast, demography, StMoMo)
- **Optional:** 5 (demogR, HMDHFDplus authentication, rattle, scorecard, fds)
- **Support packages:** 16 (visualization, data utilities, helpers)

## Installation Time

- First-time install: 10-30 minutes (depending on internet speed and CPU)
- Update check: < 1 minute
- Space required: ~500 MB for all packages

## Notes

### Authentication Required
- **HMDHFDplus**: Register at https://www.mortality.org/
- Chapters 9 & 10 (Population Projection, Lee-Carter) will still work without HMD access, but skip those data sources

### Platform-Specific Issues

**Windows:**
- All packages should install without issues
- Optional: Install [RTools](https://cran.r-project.org/bin/windows/Rtools/) if compilation fails

**macOS:**
- Requires Xcode Command Line Tools: `xcode-select --install`
- Some packages may compile from source

**Linux:**
- Usually no issues with pre-built binaries
- Some older packages (demogR) may need installation from source

## Updating Packages

To update all packages to the latest versions:

```r
update.packages(ask = FALSE)
```

To update specific packages:

```r
install.packages(c("ggplot2", "caret", "dplyr"))
```

## Checking Installation

To verify all packages are installed:

```r
# Load all packages
packages <- c("readr", "dplyr", "caret", "ggplot2", "haven", "rpart", 
              "rpart.plot", "MASS", "pROC", "forecast", "ggfortify", 
              "demography", "StMoMo", "glmnet", "bestglm", "mice", 
              "randomForest", "tree", "tidyverse", "HMDHFDplus", 
              "tidycensus", "cluster", "factoextra", "ClusterR", 
              "scorecard", "class", "mgcv", "colorspace", "gridExtra", 
              "cowplot", "RColorBrewer", "rattle", "demogR", "fds")

all_installed <- all(packages %in% rownames(installed.packages()))
cat("All packages installed:", all_installed, "\n")
```

## Troubleshooting

### "Package not found"
```r
# Install from CRAN
install.packages("packagename")

# Or check available packages
available.packages()
```

### "Compilation failed"
- Update R and RTools
- Try: `install.packages("packagename", type = "binary")`

### "Version incompatibility"
- Update all packages: `update.packages()`
- Or specific version: `require(pacman); p_load_current_gh("package")`

## See Also

- [install_packages.R](install_packages.R) — Automated installation script
- [SETUP.md](SETUP.md) — Complete setup guide
- [README.md](README.md) — Project overview
