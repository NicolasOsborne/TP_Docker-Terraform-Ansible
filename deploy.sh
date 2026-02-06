#!/bin/bash

set -e

echo "--- DEPLOYMENT START ---"

echo "--- TERRAFORM INIT ---"
cd terraform
terraform init
terraform apply -auto-approve
cd ..

echo "--- ANSIBLE DEPLOY ---"
cd ansible
ansible-playbook -i inventory.ini playbook.yml
cd ..

echo "--- WAITING FOR SERVICES TO START (this may take some time) ---"
while [ "$(docker stack services tp_devops | grep -c "0/")" -gt 0 ]; do
    echo -n "."
    sleep 3
done

echo "--- DEPLOYMENT DONE ---"
docker stack services tp_devops
