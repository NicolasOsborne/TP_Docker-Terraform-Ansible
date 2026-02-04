variable "project_name" {
   description = "Project name"
   type        = string
   default     = "devops-infrastructure-stack"
}

variable "author_name" {
   description = "Author name"
   type        = string
   default     = "Nicolas Osborne"
}

variable "filename" {
   description = "Filename for the infra ready file"
   type        = string
   default     = "infra_ready.txt"
}

variable "inventory_path" {
   description = "Relative path for the Ansible inventory file"
   type        = string
   default     = "../ansible/inventory.ini"
}