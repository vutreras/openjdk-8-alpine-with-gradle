#!/usr/bin/env bash

#get name of the current directory
NAME=$(basename "$PWD")
if [ "$1" != "" ];then
  NAME=$1
fi

#default tag is latest
TAG="latest"
if [ "$2" != "" ];then
  TAG=$2
fi

echo "Build image docker for name [$NAME] tag [$TAG]"

#build the docker
docker build -t $NAME:$TAG .
