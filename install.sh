#!/bin/bash

echo "--- PREPARE SYSTEM ---"
sudo apt update

echo "--- INSTALL BASE PACKAGES ---"
sudo apt install -y ca-certificates curl gnupg software-properties-common git

echo "--- INSTALL DEPENDENCIES ---"

echo "--- INSTALL DOCKER ---"
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "--- INSTALL TERRAFORM ---"
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/hashicorp.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt install -y terraform

echo "--- INSTALL ANSIBLE ---"
sudo apt install -y ansible

echo "--- INSTALLATIONS DONE ---"
echo "To deploy the stack, run: ./deploy.sh"