#!/bin/bash
# 1. run bash inside docker images
# run docker image and enter inside the container. The command will run bash terminal inside docker image
# docker image will be accessible like any other linux system.
# The environment will be setup according to provided configs
# docker run --gpus all -it -p ${HOST-PORT}:${DOCKER-PORT} -v ${PJ-HOST-DIR}:${PJ-DOCKER-DIR} $1 /bin/bash

# 2. run docker image without bash
# this command will run docker image using docker_entrypoint.sh
# Image will execute commands inside docker_entrypoint.sh and provide you access from host
# if you have start some process which communicates with host
docker run --gpus all -it -p ${HOST_PORT}:${DOCKER_PORT} -v ${PJ_HOST_DIR}:${PJ_DOCKER_DIR} $1