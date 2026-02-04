output "project" {
   value = var.project_name
}

output "author" {
   value = var.author_name
}

output "infra_file" {
   value = "${path.module}/${var.filename}"
}

output "ansible_inventory" {
   value = "${path.module}/${var.inventory_path}"
}