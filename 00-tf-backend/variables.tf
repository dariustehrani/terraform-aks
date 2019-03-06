/* # Default, all public IP ranges. Trim as fit.
variable "network_access_rules" {
  type = "list"
  description = "Defines the network level access rules for, e.g. the storage account. Format list of IP addresses or IP ranges."
  default = ["8.0.0.0/7","11.0.0.0/8","12.0.0.0/6","16.0.0.0/4","32.0.0.0/3","64.0.0.0/2","128.0.0.0/3","160.0.0.0/5","168.0.0.0/6","172.0.0.0/12","172.32.0.0/11","172.64.0.0/10","172.128.0.0/9","173.0.0.0/8","174.0.0.0/7","176.0.0.0/4","192.0.0.0/9","192.128.0.0/11","192.160.0.0/13","192.169.0.0/16","192.170.0.0/15","192.172.0.0/14","192.176.0.0/12","192.192.0.0/10","193.0.0.0/8","194.0.0.0/7","196.0.0.0/6","200.0.0.0/5","208.0.0.0/4"]
}
*/

variable "resource_group_name" {
  type = "string"
  description = "Azutr Resource Group Name"
}

variable "storage_account_name" {
  type = "string"
  description = "name of the storage account for the terraform state"
}

variable "storage_container_name" {
  type = "string"
  description = "name of the storage container for the terraform state"
}

variable "name" {
  type = "string"
  description = "primary access key to access tf state on the SA"
}
