resource "local_file" "backend_config_aks" {
  content = <<EOF
resource_group_name  = "${var.resource_group_name}"
storage_account_name = "${var.storage_account_name}"
container_name       = "${var.storage_container_name}"
access_key           = "${var.storage_account_primary_access_key}"
EOF

  filename = "${path.module}/../backend.tfvars"
}


output "resource_group_name" {
  value = "${var.resource_group_name}"
}

output "storage_account_name" {
  value = "${var.storage_account_name}"
}

output "container_name" {
  value = "${var.storage_container_name}"
}

output "access_key" {
  value     = "${var.storage_account_primary_access_key}"
  sensitive = true
}

output "backend_config_params" {
  value     = "-backend-config 'resource_group_name=${var.resource_group_name}' -backend-config 'storage_account_name=${var.storage_account_name}' -backend-config 'container_name=${var.storage_container_name}' -backend-config 'access_key=${var.storage_account_primary_access_key}'"
  sensitive = true