#!/usr/bin/env bash
set -e

# TAG image
docker tag seo80/seo80-docker-repo $DOCKER_LOGIN/seo80-docker-repo:_latest_

# Login
echo \"${DOCKER_PASSWORD}\" | docker login --username \"${DOCKER_LOGIN}\" --password-stdin

# Push image
docker push $DOCKER_LOGIN/seo80-docker-repo:_latest_

exit 0
