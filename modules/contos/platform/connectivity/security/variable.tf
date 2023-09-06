variable "location" {
    type = string
}
variable "resource-group-name" {
    type = string
}

variable "firewall_name" {
  type = string
}
variable "firewall_sku_name" {
  type = string
}
variable "firewall_sku_tier" {
  type = string
}
variable "ip-configuration-name" {
  type = string
}
variable "public_ip_firewall_name" {
  type = string
}
variable "public_ip_firewall_allocation_method" {
  type = string
}
variable "public_ip_firewall_sku" {
  type = string
}
variable "firewallsubnet_name" {
  type = string
}
variable "firewallsubnet_address_prefixes" {
  type = list(string)
}

variable "vnet-name" {
 type = string
}


variable "web-nsg-sr1-name" {
  type = string
}
variable "web-nsg-sr1-priority" {
  type = string
}
variable "web-nsg-sr1-direction" {
  type = string
}
variable "web-nsg-sr1-access" {
  type = string
}
variable "web-nsg-sr1-protocol" {
  type = string
}
variable "web-nsg-sr1-source_address_prefix" {
  type = string
}
variable "web-nsg-sr1-source_port_range" {
  type = string
}
variable "web-nsg-sr1-destination_address_prefix" {
  type = string
} 
variable "web-nsg-sr1-destination_port_range" {
  type = string
}
variable "web-nsg-sr2-name" {
  type = string
}
  variable "web-nsg-sr2-priority" {
  type = string
}
variable "web-nsg-sr2-direction" {
  type = string
}
variable "web-nsg-sr2-access" {
  type = string
}
variable "web-nsg-sr2-protocol" {
  type = string
}
variable "web-nsg-sr2-source_address_prefix" {
  type = string
}
variable "web-nsg-sr2-source_port_range" {
  type = string
}
variable "web-nsg-sr2-destination_address_prefix" {
  type = string
} 
variable "web-nsg-sr2-destination_port_range" {
  type = string
}

variable "web_subnet_id" {
  type = string
}
variable "app-nsg-sr1-name" {
  type =string
}
variable "app-nsg-sr1-priority" {
  type = string
}
variable "app-nsg-sr1-protocol" {
  type = string
}
variable "app-nsg-sr1-access" {
  type = string
}
variable "app-nsg-sr1-direction" {
  type = string
}
variable "app-nsg-sr1-destination_address_prefix" {
  type = string
}
variable "app-nsg-sr1-destination_port_range" {
  type = string
}
variable "app-nsg-sr1-source_address_prefix" {
  type = string
}
variable "app-nsg-sr1-source_port_range" {
  type = string
}
variable "app-nsg-sr2-name" {
  type =string
}
variable "app-nsg-sr2-priority" {
  type = string
}
variable "app-nsg-sr2-protocol" {
  type = string
}
variable "app-nsg-sr2-access" {
  type = string
}
variable "app-nsg-sr2-direction" {
  type = string
}
variable "app-nsg-sr2-destination_address_prefix" {
  type = string
}
variable "app-nsg-sr2-destination_port_range" {
  type = string
}
variable "app-nsg-sr2-source_address_prefix" {
  type = string
}
variable "app-nsg-sr2-source_port_range" {
  type = string
}
/*//*/
variable "app_subnet_id" {
  type = string
}
variable "db-nsg-sr1-name" {
  type =string  
}
variable "db-nsg-sr1-priority" {
  type = string
}
variable "db-nsg-sr1-protocol" {
  type = string
}
variable "db-nsg-sr1-access" {
  type = string
}
variable "db-nsg-sr1-direction" {
  type = string
}
variable "db-nsg-sr1-source_address_prefix" {
  type = string
}
variable "db-nsg-sr1-source_port_range" {
  type = string
}
variable "db-nsg-sr1-destination_address_prefix" {
  type = string
}
variable "db-nsg-sr1-destination_port_range" {
  type = string
}/*//*/
variable "db-nsg-sr2-name" {
  type =string  
}
variable "db-nsg-sr2-priority" {
  type = string
}
variable "db-nsg-sr2-protocol" {
  type = string
}
variable "db-nsg-sr2-access" {
  type = string
}
variable "db-nsg-sr2-direction" {
  type = string
}
variable "db-nsg-sr2-source_address_prefix" {
  type = string
}
variable "db-nsg-sr2-source_port_range" {
  type = string
}
variable "db-nsg-sr2-destination_address_prefix" {
  type = string
}
variable "db-nsg-sr2-destination_port_range" {
  type = string
}
