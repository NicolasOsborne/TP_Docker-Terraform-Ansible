#!/bin/bash

echo "--- INSTALL TOOLS ---"
sudo apt update
sudo apt install -y terraform ansible docker.io git

echo "--- TERRAFORM INIT ---"
cd terraform
terraform init
terraform apply -auto-approve

echo "--- ANSIBLE DEPLOY ---"
cd ../ansible
ansible-playbook -i inventory.ini playbook.yml

echo "--- DEPLOYMENT DONE ---"
echo "Verify stack by running : docker stack ps tp_devops"