#!/bin/bash

DOCKER_USERNAME="cheemaboi484"
DOCKER_PASSWORD="dckr_pat_m7N58tep9_er2JcosDI8EDbWgDo"
DOCKER_REPO="cheemaboi484/midas"
DOCKER_TAG="build_push_check"
PYTHON_SCRIPT="./MIDASrenew.py"

/c/Users/armaa/AppData/Local/Programs/Python/Python311/python $PYTHON_SCRIPT

docker build -t $DOCKER_REPO:$DOCKER_TAG .

echo "$DOCKER_PASSWORD" | docker login --username "$DOCKER_USERNAME" --password-stdin

docker push $DOCKER_REPO:$DOCKER_TAG

docker logout