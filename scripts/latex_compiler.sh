#/bin/bash

# For Travis
set -ev

CONTAINER_NAME="Resume_Builder"
IMAGE_NAME="latex_compiler"
OUTPUT_NAME="Resume_Anmol_Gupta.pdf"
LATEX_BUILD="sudo latexmk -cd -f -lualatex -interaction=nonstopmode -synctex=1 \
-jobname=$OUTPUT_NAME -outdir=/data/out -auxdir=/data/build \
/data/contents/cv.tex"

docker run -d --rm --name $CONTAINER_NAME -t --user="$(id -u):$(id -g)" \
--net=none -v $PWD:/data $IMAGE_NAME $LATEX_BUILD