
resource "azurerm_network_security_group" "web-nsg" {
  name                = "web-nsg"
  location            = var.location1
  resource_group_name = var.resource-group1-name
  
  security_rule {
    name                       = var.web-nsg-sr1-name
    priority                   = var.web-nsg-sr1-priority
    direction                  = var.web-nsg-sr1-direction
    access                     = var.web-nsg-sr1-access
    protocol                   = var.web-nsg-sr1-protocol
    source_address_prefix      = var.web-nsg-sr1-source_address_prefix
    source_port_range          = var.web-nsg-sr1-source_port_range
    destination_address_prefix = var.web-nsg-sr1-destination_address_prefix
    destination_port_range     = var.web-nsg-sr1-destination_port_range
  }
    security_rule {
    name                       = var.web-nsg-sr2-name
    priority                   = var.web-nsg-sr2-priority
    direction                  = var.web-nsg-sr2-direction
    access                     = var.web-nsg-sr2-access
    protocol                   = var.web-nsg-sr2-protocol
    source_address_prefix      = var.web-nsg-sr2-source_address_prefix
    source_port_range          = var.web-nsg-sr2-source_port_range
    destination_address_prefix = var.web-nsg-sr2-destination_address_prefix
    destination_port_range     = var.web-nsg-sr2-destination_port_range
}
}

resource "azurerm_network_security_group" "app-nsg" {
    name = "app-nsg"
    location = var.location1
    resource_group_name = var.resource-group1-name

    security_rule {
        name                       = var.app-nsg-sr1-name
        priority                   = var.app-nsg-sr1-priority
        direction                  = var.app-nsg-sr1-direction
        access                     = var.app-nsg-sr1-access
        protocol                   = var.app-nsg-sr1-protocol
        source_address_prefix      = var.app-nsg-sr1-source_address_prefix
        source_port_range          = var.app-nsg-sr1-source_port_range
        destination_address_prefix = var.app-nsg-sr1-destination_address_prefix
        destination_port_range     = var.app-nsg-sr1-destination_port_range
    }
      security_rule {
        name                        = var.app-nsg-sr2-name
        priority                    = var.app-nsg-sr2-priority
        direction                   = var.app-nsg-sr2-direction
        access                      = var.app-nsg-sr2-access
        protocol                    = var.app-nsg-sr2-protocol
        source_address_prefix       = var.app-nsg-sr2-source_address_prefix
        source_port_range           = var.app-nsg-sr2-source_port_range
        destination_address_prefix  = var.app-nsg-sr2-destination_address_prefix
        destination_port_range      = var.app-nsg-sr2-destination_port_range
    }
}

resource "azurerm_network_security_group" "db-nsg" {
    name = "db-nsg"
    location = var.location1
    resource_group_name = var.resource-group1-name

    security_rule {
        name                        = var.db-nsg-sr1-name
        priority                    = var.db-nsg-sr1-priority
        direction                   = var.db-nsg-sr1-direction
        access                      = var.db-nsg-sr1-access
        protocol                    = var.db-nsg-sr1-protocol
        source_address_prefix       = var.db-nsg-sr1-source_address_prefix
        source_port_range           = var.db-nsg-sr1-source_port_range
        destination_address_prefix  = var.db-nsg-sr1-destination_address_prefix
        destination_port_range      = var.db-nsg-sr1-destination_port_range
    }
    
    security_rule {
        name                        = var.db-nsg-sr2-name
        priority                    = var.db-nsg-sr2-priority
        direction                   = var.db-nsg-sr2-direction
        access                      = var.db-nsg-sr2-access
        protocol                    = var.db-nsg-sr2-protocol
        source_address_prefix       = var.db-nsg-sr2-source_address_prefix
        source_port_range           = var.db-nsg-sr2-source_port_range
        destination_address_prefix  = var.db-nsg-sr2-destination_address_prefix
        destination_port_range      = var.db-nsg-sr2-destination_port_range
    }
}
