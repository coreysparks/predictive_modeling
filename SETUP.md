# Setup Instructions for the Predictive Modeling Book

This guide walks you through installing all dependencies needed to run the code examples in this Quarto book.

## Prerequisites

- **R** (version 4.0 or later recommended)
- **Quarto** (version 1.0 or later)
- **RStudio** (optional but recommended)

## Installation Steps

### 1. Install Quarto

Visit [quarto.org](https://quarto.org/docs/get-started/) and download the installer for your operating system.

### 2. Install R and Dependencies with renv

This project uses **renv** for reproducible R environments. Once you clone the repo:

#### First-time setup:

```bash
# When you open the project, renv will automatically activate
# If needed, restore the project environment in R/RStudio:
Rscript -e "renv::restore()"
```

This will:
- Install all packages at the exact versions specified in `renv.lock`
- Create a project-specific package library in `renv/library/`
- Ensure reproducibility across machines

#### Or use the legacy method (if you prefer):

Open R or RStudio and run:

```r
source("install_packages.R")
```

This script will:
- Check which packages are already installed
- Install missing packages from CRAN
- Handle special cases (like demogR from R-Forge)
- Provide a summary of what was installed

### 3. (Optional) Setup HMD/HFD Authentication for Demographics Data

Several chapters use data from the Human Mortality Database (HMD) and Human Fertility Database (HFD). These require authentication:

1. Register at [www.mortality.org](https://www.mortality.org/)
2. Register at [www.humanfertility.org](https://www.humanfertility.org/)
3. Your username and password will be used by the R code

**Note:** The book chapters that require authentication will work without it, but will skip those analyses.

### 4. Managing Project Dependencies with renv

#### Checking the project environment:

```r
# List all packages in the project
renv::status()

# See which packages differ from the lockfile
renv::status()
```

#### Adding new packages:

When you add a new package to your code, renv can track it:

```r
# Install a new package
install.packages("new_package")

# Update the lockfile with new packages
renv::snapshot()
```

#### Updating packages:

To update specific packages while maintaining reproducibility:

```r
# Update to newer versions and record in lockfile
renv::update("package_name")
renv::snapshot()
```

#### Restoring the exact environment:

If you need to sync your environment with the lockfile:

```r
# Restore all packages to versions in renv.lock
renv::restore()
```

### 5. Verify Installation

Test that everything works by rendering a single chapter:

```bash
quarto render lasso.qmd
```

This should create an HTML file in the same directory without errors.

## Rendering the Full Book

### Local Build

```bash
# Render entire book
quarto render

# Preview while editing (auto-refreshes on save)
quarto preview

# Render specific format only
quarto render --to html
quarto render --to pdf
```

### GitHub Pages Deployment

The book automatically renders and deploys when you push to the `main` branch (via GitHub Actions workflow).

To manually enable GitHub Pages:

1. Go to **Settings** → **Pages**
2. Source: **Deploy from a branch**
3. Branch: `gh-pages` / `/ (root)`
4. Save

Your book will be available at: `https://[username].github.io/predictive_modeling/`

## About renv

**renv** creates reproducible R environments by:

1. **Scanning** your project for package dependencies (from library() calls and DESCRIPTION files)
2. **Creating** `renv.lock` — a lockfile that records exact package versions
3. **Isolating** packages in `renv/library/` so they don't affect your system R library
4. **Documenting** `renv/settings.json` for project-specific configuration

**Key files:**
- `renv.lock` — Git-tracked lockfile (commit this!)
- `renv/library/` — Project packages (in .gitignore)
- `.Rprofile` — Auto-activates renv when you open the project

**Collaborators:** When someone clones this repo, they just run `renv::restore()` and get the exact same package versions you used.

## Troubleshooting

### renv Won't Restore

**Problem:** `renv::restore()` fails with missing packages

**Solution:**
```r
# Check status
renv::status()

# Try restore with verbose output
renv::restore(verbose = TRUE)

# Or manually update the lockfile
renv::snapshot()
```

### Package Installation Fails

**Problem:** `install.packages()` hangs or times out

**Solution:** Install packages one at a time and check for missing dependencies:

```r
# Check if a package is installed
if (!require("packagename")) {
  install.packages("packagename")
}
```

### HMDHFDplus Authentication

**Problem:** Cannot access Human Mortality Database

**Solution:** 
- Register at https://www.mortality.org/
- Test authentication in R:
```r
library(HMDHFDplus)
# This will prompt for username/password
mx <- readHMDweb("USA", "Mx_1x1", username = "your.email@domain.com", password = "yourpassword")
```

### Quarto Preview Shows Blank Page

**Problem:** `quarto preview` opens but no content appears

**Solution:** 
- Check the Terminal tab in RStudio for error messages
- Ensure all library() calls complete without errors
- Try rendering a single file first: `quarto render lasso.qmd`

### PDF Rendering Fails

**Problem:** `quarto render --to pdf` fails

**Solution:**
- Check that you have a working LaTeX installation (TinyTeX, MiKTeX, or TeX Live)
- Install TinyTeX in R:
```r
install.packages("tinytex")
tinytex::install_tinytex()
```

## System Requirements

### Minimum
- RAM: 4 GB
- Disk space: 500 MB (for packages + book output)
- CPU: Any modern processor

### Recommended
- RAM: 8 GB
- Disk space: 2 GB
- CPU: Multi-core processor (for faster rendering)

## Required System Libraries

Some packages may require system libraries:

**On Ubuntu/Debian:**
```bash
sudo apt-get install libcurl4-openssl-dev libssl-dev libxml2-dev
```

**On macOS:**
```bash
# Usually handled by Xcode Command Line Tools
xcode-select --install
```

**On Windows:**
- Should work out of the box
- If issues arise, install [RTools](https://cran.r-project.org/bin/windows/Rtools/)

## Quick Start

```bash
# Clone repository
git clone https://github.com/coreysparks/predictive_modeling.git
cd predictive_modeling

# Install dependencies
Rscript install_packages.R

# Preview the book
quarto preview
```

Then navigate to `http://localhost:5173` in your browser.

## Next Steps

- Read [README.md](README.md) for book overview
- Check [_quarto.yml](_quarto.yml) for project configuration
- Start with `index.qmd` for the introduction
- Each chapter is a standalone `.qmd` file

## Support

For issues:
1. Check the troubleshooting section above
2. Review package documentation: `help(package="packagename")`
3. Open an issue on [GitHub](https://github.com/coreysparks/predictive_modeling/issues)

## Additional Resources

- [Quarto Documentation](https://quarto.org/)
- [R for Data Science](https://r4ds.had.co.nz/)
- [Introduction to Statistical Learning](https://www.statlearning.com/)
- [caret Package Documentation](http://topepo.github.io/caret/)
