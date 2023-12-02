module "az_storage" {
  source               = "./module"
  resource_group_name  = "example-resource-group"
  storage_account_name  = "examplestorageaccount"
  location             = "East US"
  container_name       = "examplecontainer"
  container_access_type = "private"
}

output "storage_connection_string" {
  value = module.az_storage.connection_string
}
