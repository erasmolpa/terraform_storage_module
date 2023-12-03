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

variable "account_tier" {
  description = "The storage account tier"
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The storage account replication type"
  default     = "LRS"
}

variable "create_service_principal" {
  description = "Whether to create a service principal or not"
  default     = false
}