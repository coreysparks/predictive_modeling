# Summer Workshops in R and Demography

This directory contains a Quarto book with materials from the UTSA Department of Demography summer workshop series.

## Contents

The book includes the following chapters:

1. **Introduction to R** - Getting started with R, basic operations, tidyverse, and data visualization
2. **Lasso and Regularized Regression** - Ridge regression, Lasso, and elastic net methods
3. **Cluster Analysis** - Unsupervised learning and clustering techniques
4. **Classification and Regression Trees (Random Forests)** - Tree-based classification methods
5. **Introduction to Time Series Analysis** - Time series fundamentals and forecasting
6. **Population Projection and the Lee-Carter Model** - Demographic projection methods
7. **Lee Carter for US** - Application of the Lee-Carter model to US mortality data

## Building the Book

To build this Quarto book, you need to have [Quarto](https://quarto.org/) installed.

### Preview the book

```bash
cd summer_workshops
quarto preview
```

This will open a preview of the book in your browser and automatically reload when you make changes.

### Render the book

To render the complete book to HTML:

```bash
quarto render
```

To render to PDF (requires LaTeX installation):

```bash
quarto render --to pdf
```

The rendered book will be available in the `_book` directory.

## File Structure

- `_quarto.yml` - Main configuration file for the book
- `index.qmd` - Introduction chapter (Welcome to R)
- `lasso.qmd` - Lasso and regularized regression
- `clustering.qmd` - Cluster analysis
- `random-forests.qmd` - Random forests and classification trees
- `time-series.qmd` - Time series analysis
- `projection.qmd` - Population projection methods
- `lee-carter.qmd` - Lee-Carter model application

## Original Files

The original R Markdown (.Rmd) files are still available in this directory if you need to reference them.

## Author

Corey Sparks, PhD
UTSA Department of Demography

## Publishing

To publish this book to GitHub Pages or another hosting service, see the [Quarto publishing documentation](https://quarto.org/docs/publishing/).

For GitHub Pages:

```bash
quarto publish gh-pages
```
