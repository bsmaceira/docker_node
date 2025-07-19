# docker_node
A custom Ubuntu-based Node.js dev image with git and nano preinstalled.

## Build image
docker build -t docker_node:1.0 .

## Run container
docker run -it --hostname docker-node docker_node:1.0
