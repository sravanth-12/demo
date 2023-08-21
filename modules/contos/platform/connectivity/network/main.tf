
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet-name
  address_space       = var.vnet_address_space
  location            = var.location
  resource_group_name = var.resource-group-name
} 

resource "azurerm_subnet" "vnet-subnet" {
  name                 = var.subnet-name
  resource_group_name  = var.resource-group-name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet-address-prefix
}
