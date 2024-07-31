#!/bin/bash

# Update and install Docker
sudo apt update
sudo apt install -y docker.io docker-compose

# Start Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Run Docker Compose
sudo docker-compose up -d
