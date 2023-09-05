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

variable "vmsubnet_name" {
  type = string
}
variable "vmsubnet_address_prefixes" {
  type = list(string)

}

variable "resource-group-name" {
    type = string
}
variable "location" {
  type=string
}
variable "vnet-name" {
 type = string
}
