# Nicolas OSBORNE

# TP Docker - Terraform - Ansible

## Contexte

Ce TP est réalisé dans le cadre du module "Infrastructure et Devops" en M2 Ingénierie du Web à l'ESGI, dispensé par Damien LAMY.

## Objectif du TP

Monter une stack Docker avec :

- 3 Nginx Reverse en Docker Swarm
- Avec hébergement Let's Encrypt
- Avec un serveur web GLPI
- Et avec une base de données Maria DB pour GLPI

Le tout doit être déployé automatiquement via Terraform et configuré via Ansible.

## Technologies utilisées

- Docker et Docker Swarm
- Terraform
- Ansible
- Ngnix Reverse Proxy
- GLPI
- Let's Encrypt
- Maria DB

## Mise en place et déploiement automatisé :

Tout d'abord, cloner ce dépôt, puis exécuter le script pour installer et déployer automatiquement :

```bash
git clone https://github.com/NicolasOsborne/TP_Docker-Terraform-Ansible.git

cd TP_Docker-Terraform-Ansible

./deploy.sh
```

Si l'exécution du script `deploy.sh` échoue pour des raisons de droits, exécuter la commande suivante après avoir cloné le dépôt :

```bash
chmod +x deploy.sh

./deploy.sh
```
