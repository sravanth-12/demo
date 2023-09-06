variable "managementgroup" {
  type = string
  
  
}
variable "childgroupA0" { 
  type = string
  
}
variable "childgroupB0" { 
  type = string
  
}
variable "childgroupB1" { 
  type = string
  
}
variable "childgroupB3" { 
  type = string
  
}
variable "childgroupB2" { 
  type = string
  
}
variable "childgroupC0" { 
  type = string
  
}
variable "childgroupD0" { 
  type = string
  
}
variable "childgroupD1" { 
  type = string

}
variable "childgroupD2" { 
  type = string
  
}/*///*/
variable "resource-group-name" {
    type = string
    description = "Resource Group Name"
}

variable "location" {
    type = string
    description = "Location for deployment"
}

variable "vnet-name" {
    type = string
    description = "Virtual Network Name"
}

variable "vnet-address-space" {
    type = list(string)
    description = "Address space of virtual network"
}
variable "subnet-name" {
    type = string
    description = "Name of vnet subnet"
}

variable "subnet-address-prefix" {
    type = list(string)
    description = "Address prefix of vnet subnet"
}/*////*/
variable "NIC_name" {
    type = string
    description = "Name of the Network Interface Card"
}

variable "ip_configuration_name" {
    type = string
    description = "Private IP configuration name"
}

variable "IP_allocation" {
    type = string
    description = "Allocation method of IP address for virtual machine"
}

variable "encryption_algorithm" {
    type = string
    description = "Public Key encryption algorithm"
}

variable "rsa_bits" {
    type = number
    description = "Number of RSA bits"
}

variable "vm_name" {
    type = string
    description = "Name of virtual machine"
}

variable "size" {
    type = string
    description = "Disk size and CPU of virtual machine"
}

variable "username" {
    type = string
    description = "Admin username for virtual machine"
}

variable "OS_disk_caching" {
    type = string
    description = "Caching type of OS disk"
}

variable "stgacc_type" {
    type = string
    description = "Storage account type of OS disk in virtual machine"
}

variable "publisher" {
    type = string
    description = "Publisher name of virtual machine source image"
}

variable "offer" {
    type = string
    description = "virtual machine source image OS"
}

variable "vm_sku" {
    type = string
    description = "SKU of virtual machine OS"
}

variable "OS_version" {
    type = string
    description = "OS version of virtual machine"
}
variable "app_public_ip-name" {
  type = string
}
variable "allocation_method" {
  type = string
}
/*variable "vnet-name" {
 type = string
}*/
variable "vmsubnet_name" {
  type = string
}
variable "vmsubnet_address_prefixes" {
  type = list(string)

}
//
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
/*//*/
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
}/*//*/
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


variable "resource-group1-name" {
    type = string
}
variable "location1" {
    type = string
}


variable "vnet_address_space" {
    type = list(string)
}
variable "subnet-address_prefixes" {
    type = list(string)
}

variable "primary_database" {
    type = string
}
variable "primary_database_version" {
    type = string
}
variable "primary_database_admin" {
    type = string
}
variable "primary_database_password" {
    type = string
}

variable "primary_database1" {
    type = string
}
variable "primary_database1_version" {
    type = string
}
variable "primary_database1_admin" {
    type = string
}
variable "primary_database1_password" {
    type = string
}



variable "app_vault-name" {
  type = string
}
/*variable "resource-group-name" {
  type = string
}
variable "location" {
  type = string
}*/
variable "tenant_id" {
  type = string
}
variable "soft_delete_retention_days" {
  type = number
}
variable "purge_protection_enabled" {
  type = bool
}
variable "sku_name" {
  type = string
}
variable "vmpassword-name" {
  type = string
}
variable "vmpassword-value" {
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
