#!/bin/bash

# Run Appwrite setup interactively using environment variables from the config file
docker run -it --rm \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    --volume "$(pwd)"/appwrite:/usr/src/code/appwrite:rw \
    --env-file config.env \
    --entrypoint="install" \
    appwrite/appwrite:1.3.8
