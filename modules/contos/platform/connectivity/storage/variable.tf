
variable "primary_database" {
    type = string
}
variable "resource-group-name" {
    type = string
}
variable "location" {
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
variable "firewall_name" {
  type = string
}
variable "firewall_sku_name" {
  type = string
}
variable "firewall_sku_tier" {
  type = string
}
/*variable "ip_configuration_name" {
  type = string
}*/
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
