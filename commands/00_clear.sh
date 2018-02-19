#!/usr/bin/env bash
# stop all running containers.
docker stop $(docker ps -a -q)

# Remove all stopped containers.
docker rm $(docker ps -a -q)

# Remove all untagged images
docker rmi $(docker images | grep "^<none>" | awk "{print $3}")

# Remove all laradock tagged images
# docker rmi $(docker images | grep "^laradock" | awk "{print $3}")
