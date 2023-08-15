docker pull metagpt/metagpt:v0.3.1

WDIR=.
mkdir -p $WDIR/opt/metagpt/{config,workspace}
docker run --rm metagpt/metagpt:v0.3.1 cat /app/metagpt/config/config.yaml > $WDIR/opt/metagpt/config/key.yaml

code $WDIR/opt/metagpt/config/key.yaml # Change the config