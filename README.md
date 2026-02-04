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

**Tout d'abord, cloner le dépôt :**

```bash
git clone https://github.com/NicolasOsborne/TP_Docker-Terraform-Ansible.git
cd TP_Docker-Terraform-Ansible
chmod +x deploy.sh
sudo ./deploy.sh
```

Ensuite, vérifier si vous avez ces dépendances d'installées :

- Docker

```bash
docker --version
```

- Terraform

```bash
terraform --version
```

- Ansible

```bash
ansible --version
which ansible
```

Selon votre situation, vous avez deux options différentes :

**Je n'ai pas Docker, Terraform et Ansible d'installés :**
Dans ce cas, vous pouvez les installer de votre côté, en suivant les documentations officielles :

- [Docker](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)
- [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- [Ansible](https://docs.ansible.com/projects/ansible/latest/installation_guide/installation_distros.html)

Si vous préférez, vous pouvez également lancer le script bootstrap.sh qui s'occupera d'installer automatiquement toutes les dépendances nécessaires :

```bash
chmod +x bootstrap.sh
sudo ./bootstrap.sh
```

Puis, vous pourrez lancer le script de déploiement automatique :

```bash
chmod +x deploy.sh
sudo ./deploy.sh
```

**J'ai déjà Docker, Terraform et Ansible d'installés :**
Il vous suffit alors de simplement lancer le script de déploiement de la stack :

```bash
chmod +x deploy.sh
sudo ./deploy.sh
```
