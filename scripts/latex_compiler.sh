#/bin/bash

# For Travis
set -v

# Local variables
CONTAINER_NAME="Resume_Builder"
IMAGE_NAME="latex_compiler"
OUTPUT_NAME="Resume_Anmol_Gupta"
WORK_DIR="/data"
LATEX_BUILD="latexmk -cd -f -lualatex -interaction=nonstopmode -synctex=1 \
            -jobname=$OUTPUT_NAME -outdir=$WORK_DIR/out -auxdir=$WORK_DIR/build \
            $WORK_DIR/contents/cv.tex"

# Start the docker in bash shell in background
docker run -d -t --name $CONTAINER_NAME $IMAGE_NAME /bin/bash

# Run the docker, feeding it with the src directory with latex files
docker exec -t $CONTAINER_NAME $LATEX_BUILD

# Go fetch the output
docker cp $CONTAINER_NAME:/data/out/$OUTPUT_NAME.pdf .

# Check if the output was produced, aka copied to host from the container
if [  -f ./$OUTPUT_NAME.pdf ]; then
    exit 0;
fi

# Else there was a error
exit 1;