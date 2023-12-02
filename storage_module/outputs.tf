output "connection_string" {
  value = data.azurerm_storage_account.example.primary_connection_string
}
