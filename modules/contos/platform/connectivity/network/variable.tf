variable "vnet-name" {
    type = string
}
variable "vnet_address_space" {
    type = list(string)
}
variable "subnet-name" {
    type = string
}
variable "subnet-address-prefix" {
    type = list(string)
}
variable "resource-group-name" {
    type = string
}
variable "location" {
    type = string
}
