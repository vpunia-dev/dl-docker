#!/bin/bash

export PYTHON_VERSION="3.6.9"
export DOCKER_USER="DEMO_USER"
export PYTHON_VENV_NAME="DEMO_ENV"
export HOST_PORT="8888"
export DOCKER_PORT="8888"
export PJ_HOST_DIR="/home/dobby/projects/endimension/templates/docker_python/sample_project"
export PJ_DOCKER_DIR="/projects/sample_project"
for filename in ./tmpl/*; do
    out="$(basename $filename)"
    envsubst < $filename > $out
done