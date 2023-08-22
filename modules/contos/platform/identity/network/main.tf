resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet-name
  address_space       = var.vnet_address_space
  location           = var.location1
  resource_group_name = var.resource-group1-name
}
resource "azurerm_subnet" "subnet" {
  name = var.subnet-name
  resource_group_name  =var.resource-group1-name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet-address_prefixes
}
