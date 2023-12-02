variable "resource_group_name" {
  description = "The name of the resource group"
}

variable "storage_account_name" {
  description = "The name of the storage account"
}

variable "location" {
  description = "The location for all resources"
}

variable "container_name" {
  description = "The name of the storage container"
}

variable "container_access_type" {
  description = "The access type for the storage container"
  default     = "private"
}
