#!/bin/bash
set -e

echo "Building application..."
./mvnw clean package

echo "Building Docker image..."
docker build -t gemal-dev .

echo "Build complete: gemal-dev:latest"