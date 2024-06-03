#!/bin/bash

VERSION=latest
OPT_DIR_NAME=opt_$VERSION
WDIR=.

docker run --rm \
    --privileged \
    --network host \
    -v $WDIR/$OPT_DIR_NAME/metagpt/config/config2.yaml:/app/metagpt/config/config2.yaml \
    -v $WDIR/$OPT_DIR_NAME/metagpt/workspace:/app/metagpt/workspace \
    metagpt/metagpt:$VERSION \
    metagpt "Write a cli snake game"