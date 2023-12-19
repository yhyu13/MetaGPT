#!/bin/bash

VERSION=latest
OPT_DIR_NAME=opt_$VERSION
WDIR=.

docker pull metagpt/metagpt:$VERSION
mkdir -p $WDIR/$OPT_DIR_NAME/metagpt/{config,workspace}
docker run --rm metagpt/metagpt:$VERSION cat /app/metagpt/config/config.yaml > $WDIR/$OPT_DIR_NAME/metagpt/config/key.yaml

code $WDIR/$OPT_DIR_NAME/metagpt/config/key.yaml # Change the config