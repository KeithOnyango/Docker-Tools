#!/bin/bash

# Remove existing Docker installations
sudo apt-get remove docker docker-engine docker.io containerd runc

# Update package information
sudo apt-get update

# Install prerequisites
sudo apt-get install -y ca-certificates curl gnupg lsb-release

# Create directory for apt keyrings
sudo mkdir -p /etc/apt/keyrings

# Download and install Docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Add Docker repository to sources.list.d
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
 $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update package information again
sudo apt-get update

# Install Docker and Docker Compose
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose

# Provide information about the installation
echo "Docker and Docker Compose have been successfully installed."

# Optional: Add the current user to the 'docker' group to run Docker commands without sudo
# sudo usermod -aG docker $USER
# Note: Logout and login again or restart the system for the group changes to take effect
