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
- Nginx Reverse Proxy
- GLPI
- Let's Encrypt
- Maria DB

## Structure et arborescence du projet :

```
TP_Docker-Terraform-Ansible/
│
├── .gitignore
├── README.md
├── deploy.sh
├── install.sh
│
├── terraform/
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
│
├── ansible/
│   ├── inventory.ini (généré automatiquement par Terraform)
│   ├── playbook.yml
│   └── roles/
│       ├── docker/
│       │	└── tasks/
│       │		└── main.yml
│       ├── swarm/
│       │	└── tasks/
│       │		└── main.yml
│       └── stack/
│       	└── tasks/
│       		└── main.yml
│
└── docker/
    ├── docker-stack.yml
    └── nginx/
       	 └── conf.d/
       	     └── default.conf

```

## Mise en place et déploiement automatisé :

### Tout d'abord, clonez le dépôt :

```bash
git clone https://github.com/NicolasOsborne/TP_Docker-Terraform-Ansible.git
cd TP_Docker-Terraform-Ansible
```

Ensuite, vous pouvez vérifiez si vous avez déjà les dépendences nécessaires installées sur votre machine ou VM :

- **Docker**

```bash
docker --version
```

- **Terraform**

```bash
terraform --version
```

- **Ansible**

```bash
ansible --version
```

Selon votre situation, vous avez plusieurs options possibles :

**Vous n'avez pas Docker, Terraform et/ou Ansible d'installés :**
Dans ce cas, vous pouvez soit les installer individuellement de votre côté, en suivant les documentations officielles :

- [Docker](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)
- [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- [Ansible](https://docs.ansible.com/projects/ansible/latest/installation_guide/installation_distros.html)

Ou alors, si vous préférez, vous pouvez également lancer le script `install.sh` qui s'occupera d'installer automatiquement toutes les dépendances nécessaires :

```bash
chmod +x install.sh
sudo ./install.sh
```

Puis, vous pourrez lancer le script de déploiement automatique de la stack à l'aide de `deploy.sh` :

```bash
sudo ./deploy.sh
```

**Vous avez déjà Docker, Terraform et Ansible d'installés :**
Il vous suffit alors de simplement lancer le script de déploiement de la stack à l'aide de `deploy.sh` :

```bash
sudo ./deploy.sh
```
