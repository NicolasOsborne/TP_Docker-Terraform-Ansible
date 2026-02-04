terraform {
   required_providers {
      local = {
         source  = "hashicorp/local"
         version = "~> 2.4"
      }
   }
}

provider "local" {}

resource "local_file" "infra_ready" {
   filename = "${path.module}/${var.filename}"
   content  = "Infrastructure ready for project ${var.project_name} by ${var.author_name}."
}

resource "local_file" "ansible_inventory" {
   filename = "${path.module}/${var.inventory_path}"

   content = <<EOT
[manager]
localhost ansible_connection=local
EOT
}
