#!/bin/bash
# Run the R code to restore renv
Rscript -e "renv::restore()"
# Render Quarto
quarto render  index.qmd --output-dir _html