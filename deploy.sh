echo "--- DEPLOYMENT START ---"

echo "--- TERRAFORM INIT ---"
cd terraform || exit
terraform init
terraform apply -auto-approve

echo "--- ANSIBLE DEPLOY ---"
cd ../ansible || exit
ansible-playbook -i inventory.ini playbook.yml

echo "--- DEPLOYMENT DONE ---"
echo "Check services with: docker service ls"