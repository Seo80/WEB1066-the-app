#!/usr/bin/env bash
set -e

# TAG image
docker tag seo80/seo80-docker-repo $DOCKER_LOGIN/web1066-the-app:latest

# Login
echo \"${DOCKER_PASSWORD}\" | docker login --username \"${DOCKER_LOGIN}\" --password-stdin

# Push image
docker push $DOCKER_LOGIN/web1066-the-app:latest

exit 0
