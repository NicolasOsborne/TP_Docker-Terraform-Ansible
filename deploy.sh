echo "--- DEPLOYMENT START ---"

echo "--- TERRAFORM INIT ---"
cd terraform
terraform init
terraform apply -auto-approve

echo "--- ANSIBLE DEPLOY ---"
cd ../ansible
ansible-playbook -i inventory.ini playbook.yml

echo "--- DEPLOYMENT DONE ---"
docker service ls || echo "Docker services check failed, make sure Docker is running and user is in docker group."
