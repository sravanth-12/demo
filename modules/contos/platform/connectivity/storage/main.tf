
resource "azurerm_mssql_server" "primary_database" {
    name = var.primary_database
    resource_group_name = var.resource-group-name
    location = var.location
    version = var.primary_database_version
    administrator_login = var.primary_database_admin
    administrator_login_password = var.primary_database_password
}
resource "azurerm_sql_database" "db" {
  name                = "db"
  resource_group_name = var.resource-group-name
  location            = var.location
  server_name         = azurerm_mssql_server.primary_database.name
}
resource "azurerm_firewall" "firewall" {
  name                = var.firewall_name
  location            = var.location
  resource_group_name = var.resource-group-name
  sku_name            = var.firewall_sku_name
  sku_tier            = var.firewall_sku_tier


  ip_configuration {
    name                 = var.ip_configuration_name
    subnet_id            = azurerm_subnet.firewallsubnet.id
    public_ip_address_id = azurerm_public_ip.publicip.id
  }

}
resource "azurerm_public_ip" "publicip" {
  name                = var.public_ip_firewall_name
  location            = var.location
  resource_group_name = var.resource-group-name
  allocation_method   = var.public_ip_firewall_allocation_method
  sku                 = var.public_ip_firewall_sku
}
resource "azurerm_subnet" "firewallsubnet" {
  name                 = var.firewallsubnet_name
  resource_group_name  = var.resource-group-name
  virtual_network_name = var.vnet-name
  address_prefixes     = var.firewallsubnet_address_prefixes
}
