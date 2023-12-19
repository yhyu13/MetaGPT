#!/bin/bash

VERSION=latest
OPT_DIR_NAME=opt_$VERSION
WDIR=.

docker run --rm \
    --privileged \
    --network host \
    -v $WDIR/$OPT_DIR_NAME/metagpt/config/key.yaml:/app/metagpt/config/key.yaml \
    -v $WDIR/$OPT_DIR_NAME/metagpt/workspace:/app/metagpt/workspace \
    metagpt/metagpt:$VERSION \
    python startup.py "Write a cli snake game"