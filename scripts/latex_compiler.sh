#/bin/bash

# For Travis
set -ev

CONTAINER_NAME="Resume_Builder"
IMAGE_NAME="latex_compiler"
LATEX_BUILD="sudo latexmk -cd -f -lualatex -interaction=nonstopmode -synctex=1 \
  -outdir=/data/out -auxdir=/data/build contents/cv.tex"

docker run -d --rm --name $CONTAINER_NAME -t --user="$(id -u):$(id -g)" \
  --net=none -v $PWD:/data $IMAGE_NAME /bin/sh -c $LATEX_BUILD