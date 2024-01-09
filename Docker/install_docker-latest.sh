#!/bin/bash

# Update package information
sudo apt-get update

# Install prerequisites
sudo apt-get install -y ca-certificates curl gnupg lsb-release

# Install Docker
curl -fsSL https://get.docker.com | sudo bash

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Provide information about the installation
echo "Docker and Docker Compose have been successfully installed."

# Optional: Add the current user to the 'docker' group to run Docker commands without sudo
# sudo usermod -aG docker $USER
# Note: Logout and login again or restart the system for the group changes to take effect
