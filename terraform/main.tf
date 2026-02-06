terraform {
   required_providers {
      docker = {
         source  = "kreuzwerker/docker"
         version = "~> 3.6.2"
      }
      local = {
         source  = "hashicorp/local"
      }
   }
}

provider "docker" {
   host = "unix:///var/run/docker.sock"
}

resource "docker_network" "glpi_network" {
   name   = "glpi-network"
   driver = "overlay"
   attachable = true
}

resource "local_file" "infra_ready" {
   filename = "${path.module}/${var.filename}"
   content  = "Infrastructure ready for project ${var.project_name} by ${var.author_name}."
}

resource "local_file" "ansible_inventory" {
   filename = "${path.module}/${var.inventory_path}"
   content  = "[manager]\nlocalhost ansible_connection=local"
}
