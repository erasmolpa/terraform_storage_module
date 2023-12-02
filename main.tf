provider "azurerm" {
  features = {}
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "example" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = var.container_access_type
}

data "azurerm_storage_account" "example" {
  name                = azurerm_storage_account.example.name
  resource_group_name = azurerm_resource_group.example.name
}

output "connection_string" {
  value = data.azurerm_storage_account.example.primary_connection_string
}
