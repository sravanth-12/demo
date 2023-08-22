
resource "azurerm_network_interface" "vnet" {
  name                = var.NIC_name
  location            = var.location1
  resource_group_name = var.resource-group1-name

  ip_configuration {
    name                          = var.ip_configuration_name
    subnet_id                     =var.subnet_id
    private_ip_address_allocation = var.IP_allocation
  }
}
 
resource "tls_private_key" "ssh" {
    algorithm = var.encryption_algorithm
    rsa_bits = var.rsa_bits
}

resource "azurerm_linux_virtual_machine" "virtual-machine" {
  name                = var.vm_name
  resource_group_name = var.resource-group1-name
  location            = var.location1
  size                = var.size
  admin_username      = var.username
  network_interface_ids = [
    azurerm_network_interface.vnet.id,
  ]
   
 
   

   admin_ssh_key{
     username   = var.username
     public_key=tls_private_key.ssh.public_key_openssh
   }

  os_disk {
    caching              = var.OS_disk_caching
    storage_account_type = var.stgacc_type
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.vm_sku
    version   = var.OS_version
  }
}
