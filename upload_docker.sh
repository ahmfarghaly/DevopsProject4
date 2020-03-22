#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerid=asfora
dockerpath=$dockerid/cloud_devops

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username $dockerid --password-stdin
docker tag project4 $dockerpath:project4

# Step 3:
# Push image to a docker repository
docker push $dockerpath:project4
