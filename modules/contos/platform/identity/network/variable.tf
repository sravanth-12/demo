variable "vnet-name" {
    type = string
}
variable "vnet_address_space" {
    type = list(string)
}
variable "subnet-name" {
    type = string
}
variable "subnet-address_prefixes" {
    type = list(string)
}
variable "resource-group1-name" {
    type = string
}
variable "location1" {
    type = string
}
