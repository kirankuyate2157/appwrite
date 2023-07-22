#!/bin/bash

# Build the Docker image
docker build -t my_appwrite .

# Start the containers using docker-compose
docker-compose up -d
