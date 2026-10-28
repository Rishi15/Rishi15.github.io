#!/usr/bin/env bash
# Build cv.tex and publish the PDF to the site root as Rishi_Dhar_CV.pdf
set -euo pipefail
cd "$(dirname "$0")"
latexmk -pdf -interaction=nonstopmode -outdir=build cv.tex
cp build/cv.pdf ../Rishi_Dhar_CV.pdf
echo "Wrote ../Rishi_Dhar_CV.pdf"
