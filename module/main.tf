resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

resource "azurerm_storage_container" "storage_container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = var.container_access_type
}

data "azurerm_storage_account" "storage_account" {
  name                = azurerm_storage_account.storage_account.name
  resource_group_name = azurerm_resource_group.rg.name
}



data "azuread_client_config" "current" {}

resource "azuread_application" "python_app" {
  count        = var.create_service_principal ? 1 : 0
  display_name = "python_app"
  owners       = [data.azuread_client_config.current.object_id]
}

resource "azuread_service_principal" "sp" {
  count                        = var.create_service_principal ? 1 : 0
  client_id                    = azuread_application.python_app[count.index]
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]
}
