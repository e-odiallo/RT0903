#!/bin/bash
# Author Oumar D.
# Created on 02/02/2022

account=0diallo
dockerName=motd
version=$(git rev-parse --short HEAD)

echo $version
echo "Building and uploading the container on DockerHub"

echo "Start build"

docker login
docker build -t $account/$dockerName:$version .
docker push  $account/$dockerName:$version
 

