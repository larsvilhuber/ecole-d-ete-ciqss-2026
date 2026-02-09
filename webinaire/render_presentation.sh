#!/bin/bash

# Dynamically determine the last component of the filepath
thisdir=$(cd "$(dirname "$0")" && pwd)

# target
targetdir=webinaire

# Call this from the main directory, go up a directory if we are in the presentation directory
if [[ "$(basename "$thisdir")" == "$targetdir" ]]; then
    cd "$(dirname "$thisdir")"
fi
pwd
[[ -z $QUARTO_OPTS ]] && QUARTO_OPTS="--output-dir _html"
# first run R to ensure renv is complete
Rscript -e "renv::restore()"

quarto render ${targetdir}/index.qmd $QUARTO_OPTS
