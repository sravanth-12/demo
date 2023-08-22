resource "azurerm_mssql_server" "primary_database1" {
    name = var.primary_database1
    resource_group_name = var.resource-group1-name
    location = var.location1
    version = var.primary_database1_version
    administrator_login = var.primary_database1_admin
    administrator_login_password = var.primary_database1_password
}
resource "azurerm_sql_database" "db" {
  name                = "db"
  resource_group_name = var.resource-group1-name
  location            = var.location1
  server_name         = azurerm_mssql_server.primary_database1.name
}
