WDIR=.

docker run --rm \
    --privileged \
    -v $WDIR/opt/metagpt/config/key.yaml:/app/metagpt/config/key.yaml \
    -v $WDIR/opt/metagpt/workspace:/app/metagpt/workspace \
    metagpt/metagpt:v0.3.1 \
    python startup.py "Write a cli snake game"