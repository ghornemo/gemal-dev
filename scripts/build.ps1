$ErrorActionPreference = "Stop"

Write-Host "Building application..."
.\mvnw.cmd clean package

Write-Host "Building Docker image..."
docker build -t gemal-dev .

Write-Host "Build complete: gemal-dev:latest"