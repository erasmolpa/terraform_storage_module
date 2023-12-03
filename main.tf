module "az_storage" {
  source               = "./module"
  resource_group_name  = var.resource_group_name
  storage_account_name  = var.storage_account_name
  location             = var.location
  container_name       = var.container_name
  container_access_type = var.container_access_type
  create_service_principal = false 
}