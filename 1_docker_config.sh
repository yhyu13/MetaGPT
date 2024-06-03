#!/bin/bash

VERSION=latest
OPT_DIR_NAME=opt_$VERSION
WDIR=.

docker pull metagpt/metagpt:$VERSION
mkdir -p $WDIR/$OPT_DIR_NAME/metagpt/{config,workspace}
docker run --rm metagpt/metagpt:$VERSION cat /app/metagpt/config/config2.yaml > $WDIR/$OPT_DIR_NAME/metagpt/config/config2.yaml

code $WDIR/$OPT_DIR_NAME/metagpt/config/config2.yaml # Change the config