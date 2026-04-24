# Predictive Modeling and Quantitative Methods in Demography

A comprehensive Quarto book combining two workshop series on machine learning, statistical modeling, and demographic methods developed at the UTSA Department of Demography.

**Live book:** https://coreysparks.github.io/predictive_modeling/

## Overview

This book brings together teaching materials from:
- **Predictive Modeling Working Group (2019)** — An informal seminar series introducing machine learning concepts and methods to demographers
- **Summer Workshops in R and Demography (2020)** — A structured seminar series covering quantitative methods in R

The content progresses from foundational concepts through advanced demographic modeling techniques, with hands-on examples using real demographic data.

## Contents

The book is organized into 5 parts with 11 chapters:

### Part 1: Foundations of Predictive Modeling
- **What is Predictive Modeling?** — Core concepts, vocabulary, bias-variance tradeoff, training vs. testing
- **Regularized Regression (Lasso)** — Regularization, variable selection, elastic net, application to demographic data

### Part 2: Classification Methods
- **Basic Classification** — Logistic regression, decision trees, linear discriminant analysis using DHS contraceptive use data
- **Classification and Cross-Validation** — K-fold cross-validation, hyperparameter tuning, ROC curves, AUC
- **K-Nearest Neighbors** — Non-parametric classification, neighbor selection, distance metrics

### Part 3: Unsupervised Learning
- **Cluster Analysis** — K-means, hierarchical clustering, model-based clustering, latent class analysis, similarity metrics

### Part 4: Tree-Based and Ensemble Methods
- **Random Forests** — Classification and regression trees, ensemble methods, feature importance

### Part 5: Time Series and Demographic Methods
- **Time Series Analysis** — Autocorrelation, stationarity, ARIMA models, real demographic time series
- **Population Projection** — Cohort-component method, Hamilton-Perry method, Leslie matrix models
- **Lee-Carter Model** — Modern mortality forecasting using Human Mortality Database data

## Software Requirements

All examples use **R**. Key packages:
- `caret` — Machine learning workflow
- `glmnet` — Lasso and elastic net
- `rpart` — Decision trees
- `randomForest` — Random forests
- `forecast`, `tseries` — Time series analysis
- `demography`, `StMoMo` — Demographic methods
- `tidyverse` — Data manipulation and visualization

## Building the Book

### Local Build (requires R, Quarto, and packages installed)

```bash
# Install Quarto from https://quarto.org/docs/get-started/

# Render HTML
quarto render

# Render specific format
quarto render --to html  # HTML book
quarto render --to pdf   # PDF book

# Preview while editing
quarto preview
```

### Automated GitHub Pages Deployment

The book automatically renders and deploys when you push to the `main` branch. The GitHub Actions workflow:
1. Installs R and all required packages
2. Renders the Quarto book to HTML
3. Deploys to the `gh-pages` branch

**Setup (one-time):**
- Go to repository **Settings** → **Pages**
- Set source to **Deploy from a branch**
- Select `gh-pages` branch, root `/`

## Project Structure

```
predictive_modeling/
├── _quarto.yml                    # Book configuration
├── index.qmd                      # Welcome chapter
├── what-is-predictive-modeling.qmd
├── lasso.qmd
├── basic-classification.qmd
├── classification-cv.qmd
├── classification-knn.qmd
├── clustering.qmd
├── random-forests.qmd
├── time-series.qmd
├── projection.qmd
├── lee-carter.qmd
├── .github/workflows/publish.yml  # GitHub Pages workflow
├── README.md
├── _book/                         # Rendered HTML (git-ignored)
└── predictive_workinggroup/       # Original working group materials
    └── summer_workshops/          # Original summer workshop materials
```

## Key Features

- **Integrated workflow** — Combines two separate workshop series into a coherent progression
- **Real demographic data** — Uses DHS Model Data, BLS employment, HMD mortality, and EPA pollution data
- **Practical examples** — Every method includes runnable R code with real datasets
- **Cross-validation emphasis** — Teaches proper model evaluation and hyperparameter tuning
- **Publication-ready** — HTML and PDF outputs suitable for teaching or reference

## Data Sources

Examples use publicly available data:
- **DHS Model Data** — Demographic and Health Survey practice datasets
- **Bureau of Labor Statistics** — Time series employment data
- **Human Mortality Database** — International mortality data for Lee-Carter modeling
- **EPA** — Environmental pollution time series

## Author

**Corey Sparks, PhD**  

## License

These materials are provided for educational purposes. Please see individual files for specific licensing information.

## Citation

If you use these materials in teaching or research, please cite as:

```
Sparks, C. (2019-2020). Predictive Modeling and Quantitative Methods in Demography. 
University of Texas at San Antonio. 
https://coreysparks.github.io/predictive_modeling/
```

## Contributing

Found an error or have a suggestion? Open an issue or submit a pull request on [GitHub](https://github.com/coreysparks/predictive_modeling).

## Feedback

For questions or feedback, contact the author directly or open a GitHub issue.
