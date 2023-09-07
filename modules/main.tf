/*terraform {
backend "azurerm"{

}
}*/

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.67.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

/*terraform {
  backend "azurerm" {
    storage_account_name = "__terraformstorageaccount__"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"

    # rather than defining this inline, the Access Key can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = "__storagekey__"
    features {}
  }
}*/

module "contos" {
    source = "./contos"
    managementgroup = var.managementgroup
    
}
module "decom" {
    source = "./contos/decom"
    childgroupA0 =var.childgroupA0
    managementgroup-parent-ID = module.contos.managementgroup-parent-ID
}
module "platform" {
    source = "./contos/platform"
    childgroupB0 = var.childgroupB0
    managementgroup-parent-ID = module.contos.managementgroup-parent-ID
    
}
module "connectivity" {
    source = "./contos/platform/connectivity"
    childgroupB1 = var.childgroupB1
    childgroupB0-ID = module.platform.childgroupB0-ID
    
}
module "management" {
    source = "./contos/platform/management"
    childgroupB2 = var.childgroupB2
    childgroupB0-ID = module.platform.childgroupB0-ID 
}
module "identity" {
    source = "./contos/platform/identity"
    childgroupB3 = var.childgroupB3
    childgroupB0-ID = module.platform.childgroupB0-ID  
}
module "sandbox" {
    source = "./contos/sandbox"
    childgroupC0 = var.childgroupC0
    managementgroup-parent-ID = module.contos.managementgroup-parent-ID
    
}
module "workloads" {
    source = "./contos/workloads"
    childgroupD0 = var.childgroupD0
    managementgroup-parent-ID = module.contos.managementgroup-parent-ID
    
}
module "businessunit1" {
    source = "./contos/workloads/bs1"
    childgroupD1 = var.childgroupD1
    childgroupD0-ID = module.workloads.childgroupD0-ID
    
}
module "businessunit2" {
    source = "./contos/workloads/bs2"
    childgroupD2 = var.childgroupD2
    childgroupD0-ID = module.workloads.childgroupD0-ID
    
}
module "resourcegroup" {
    source = "./contos/platform/connectivity/resourcegroup"
    resource-group-name = var.resource-group-name
    location = var.location
    
}
   module "vnet" {
        source = "./contos/platform/connectivity/network"
        location = module.resourcegroup.location
        resource-group-name = module.resourcegroup.resource-group-name
        vnet-name = var.vnet-name
        vnet_address_space = var.vnet-address-space
        subnet-name = var.subnet-name
        subnet-address-prefix = var.subnet-address-prefix
    }
    module "storage" {
        source = "./contos/platform/connectivity/storage"
        resource-group-name = module.resourcegroup.resource-group-name
        location = module.resourcegroup.location
        primary_database = var.primary_database
        primary_database_admin = var.primary_database_admin
        primary_database_password = var.primary_database_password
        primary_database_version = var.primary_database_version
    }
   module "compute" {
        source = "./contos/platform/connectivity/compute"
        resource-group-name = module.resourcegroup.resource-group-name
        location = module.resourcegroup.location
        vm_name = var.vm_name
        vm_sku = var.vm_sku
        NIC_name = var.NIC_name
        ip_configuration_name = var.ip_configuration_name
        IP_allocation = var.IP_allocation
        encryption_algorithm = var.encryption_algorithm
        rsa_bits = var.rsa_bits
        size = var.size
        username = var.username
        OS_disk_caching = var.OS_disk_caching
        stgacc_type = var.stgacc_type
        publisher = var.publisher
        offer = var.offer
        OS_version = var.OS_version
        app_public_ip-name =var.app_public_ip-name
        allocation_method=var.allocation_method
        vmsubnet_name = var.vmsubnet_name
        vmsubnet_address_prefixes = var.vmsubnet_address_prefixes
        vnet-name = module.vnet.vnet-name
      }
module "Key" {
      source = "./contos/platform/connectivity/key"
      app_vault-name = var.app_vault-name
      resource-group-name = module.resourcegroup.resource-group-name
      location = var.location
      tenant_id = var.tenant_id
      soft_delete_retention_days = var.soft_delete_retention_days
      purge_protection_enabled = var.purge_protection_enabled
      sku_name = var.sku_name
      vmpassword-name = var.vmpassword-name
      vmpassword-value = var.vmpassword-value
      
    }


    
module "security_rule" {
    source = "./contos/platform/connectivity/security"
    web-nsg-sr1-name = var.web-nsg-sr1-name
    web-nsg-sr1-priority = var.web-nsg-sr1-priority
    web-nsg-sr1-protocol = var.web-nsg-sr1-protocol
    web-nsg-sr1-access = var.web-nsg-sr1-access
    web-nsg-sr1-direction = var.web-nsg-sr1-direction
    web-nsg-sr1-destination_address_prefix = var.web-nsg-sr1-destination_address_prefix
    web-nsg-sr1-destination_port_range = var.web-nsg-sr1-destination_port_range
    web-nsg-sr1-source_address_prefix = var.web-nsg-sr1-source_address_prefix
    web-nsg-sr1-source_port_range = var.web-nsg-sr1-source_port_range/**/
    web-nsg-sr2-name = var.web-nsg-sr2-name
    web-nsg-sr2-priority = var.web-nsg-sr2-priority
    web-nsg-sr2-protocol = var.web-nsg-sr2-protocol
    web-nsg-sr2-access = var.web-nsg-sr2-access
    web-nsg-sr2-direction = var.web-nsg-sr2-direction
    web-nsg-sr2-destination_address_prefix = var.web-nsg-sr2-destination_address_prefix
    web-nsg-sr2-destination_port_range = var.web-nsg-sr2-destination_port_range
    web-nsg-sr2-source_address_prefix = var.web-nsg-sr2-source_address_prefix
    web-nsg-sr2-source_port_range = var.web-nsg-sr2-source_port_range/**/
    app-nsg-sr1-name = var.app-nsg-sr1-name
    app-nsg-sr1-priority = var.app-nsg-sr1-priority
    app-nsg-sr1-protocol = var.app-nsg-sr1-protocol
    app-nsg-sr1-access = var.app-nsg-sr1-access
    app-nsg-sr1-direction = var.app-nsg-sr1-direction
    app-nsg-sr1-source_address_prefix = var.app-nsg-sr1-source_address_prefix
    app-nsg-sr1-source_port_range = var.app-nsg-sr1-source_port_range
    app-nsg-sr1-destination_address_prefix = var.app-nsg-sr1-destination_address_prefix
    app-nsg-sr1-destination_port_range = var.app-nsg-sr1-destination_port_range
    app-nsg-sr2-name = var.app-nsg-sr2-name
    app-nsg-sr2-priority = var.app-nsg-sr2-priority
    app-nsg-sr2-protocol = var.app-nsg-sr2-protocol
    app-nsg-sr2-direction = var.app-nsg-sr2-direction
    app-nsg-sr2-access = var.app-nsg-sr2-access
    app-nsg-sr2-source_address_prefix = var.app-nsg-sr2-source_address_prefix
    app-nsg-sr2-source_port_range = var.app-nsg-sr2-source_port_range
    app-nsg-sr2-destination_address_prefix = var.app-nsg-sr2-destination_address_prefix
    app-nsg-sr2-destination_port_range = var.app-nsg-sr2-destination_port_range/*//*/
    app_subnet_id = var.app_subnet_id
    db-nsg-sr1-name = var.db-nsg-sr1-name
    db-nsg-sr1-priority = var.db-nsg-sr1-priority
    db-nsg-sr1-protocol = var.db-nsg-sr1-protocol
    db-nsg-sr1-direction = var.db-nsg-sr1-direction
    db-nsg-sr1-access = var.db-nsg-sr1-access
    db-nsg-sr1-destination_address_prefix = var.db-nsg-sr1-destination_address_prefix
    db-nsg-sr1-destination_port_range = var.db-nsg-sr1-destination_port_range
    db-nsg-sr1-source_address_prefix = var.db-nsg-sr1-source_address_prefix
    db-nsg-sr1-source_port_range = var.db-nsg-sr1-source_port_range/*//*/
    db-nsg-sr2-name = var.db-nsg-sr2-name
    db-nsg-sr2-priority = var.db-nsg-sr2-priority
    db-nsg-sr2-protocol = var.db-nsg-sr2-protocol
    db-nsg-sr2-direction = var.db-nsg-sr2-direction
    db-nsg-sr2-access = var.db-nsg-sr2-access
    db-nsg-sr2-destination_address_prefix = var.db-nsg-sr2-destination_address_prefix
    db-nsg-sr2-destination_port_range = var.db-nsg-sr2-destination_port_range
    db-nsg-sr2-source_address_prefix = var.db-nsg-sr2-source_address_prefix
    db-nsg-sr2-source_port_range = var.app-nsg-sr2-source_port_range
    web_subnet_id = var.web_subnet_id
    resource-group-name = module.resourcegroup.resource-group-name
    location = module.resourcegroup.location
    vnet-name = module.vnet.vnet-name
    firewallsubnet_name       = var.firewallsubnet_name
    firewallsubnet_address_prefixes     = var.firewallsubnet_address_prefixes
    firewall_name = var.firewall_name
    firewall_sku_name = var.firewall_sku_name
    firewall_sku_tier = var.firewall_sku_tier
    ip-configuration-name = var.ip-configuration-name
    public_ip_firewall_name = var.public_ip_firewall_name
    public_ip_firewall_allocation_method = var.public_ip_firewall_allocation_method
    public_ip_firewall_sku = var.public_ip_firewall_sku
}

module "resourcegroup1" {
    source = "./contos/platform/identity/resourcegroup1"
    resource-group1-name = var.resource-group1-name
    location1 = var.location1 
}
module "Networking1" {
    source = "./contos/platform/identity/network"
    resource-group1-name = module.resourcegroup1.resource-group1-name
    location1 = module.resourcegroup1.location1
    vnet-name = var.vnet-name
    vnet_address_space = var.vnet_address_space
    subnet-name = var.subnet-name
    subnet-address_prefixes = var.subnet-address_prefixes
    }
 module "compute1" {
        source = "./contos/platform/identity/compute"
        vm_name = var.vm_name
        vm_sku = var.vm_sku
        NIC_name = var.NIC_name
        ip_configuration_name = var.ip_configuration_name
        IP_allocation = var.IP_allocation
        encryption_algorithm = var.encryption_algorithm
        rsa_bits = var.rsa_bits
        size = var.size
        username = var.username
        OS_disk_caching = var.OS_disk_caching
        stgacc_type = var.stgacc_type
        publisher = var.publisher
        offer = var.offer
        OS_version = var.OS_version
        resource-group1-name = module.resourcegroup1.resource-group1-name
        location1 = module.resourcegroup1.location1
        subnet_id = module.Networking1.subnet_id
        
    }
 module "security_rule1" {
    source = "./contos/platform/identity/security"
    web-nsg-sr1-name = var.web-nsg-sr1-name
    web-nsg-sr1-priority = var.web-nsg-sr1-priority
    web-nsg-sr1-protocol = var.web-nsg-sr1-protocol
    web-nsg-sr1-access = var.web-nsg-sr1-access
    web-nsg-sr1-direction = var.web-nsg-sr1-direction
    web-nsg-sr1-destination_address_prefix = var.web-nsg-sr1-destination_address_prefix
    web-nsg-sr1-destination_port_range = var.web-nsg-sr1-destination_port_range
    web-nsg-sr1-source_address_prefix = var.web-nsg-sr1-source_address_prefix
    web-nsg-sr1-source_port_range = var.web-nsg-sr1-source_port_range/**/
    web-nsg-sr2-name = var.web-nsg-sr2-name
    web-nsg-sr2-priority = var.web-nsg-sr2-priority
    web-nsg-sr2-protocol = var.web-nsg-sr2-protocol
    web-nsg-sr2-access = var.web-nsg-sr2-access
    web-nsg-sr2-direction = var.web-nsg-sr2-direction
    web-nsg-sr2-destination_address_prefix = var.web-nsg-sr2-destination_address_prefix
    web-nsg-sr2-destination_port_range = var.web-nsg-sr2-destination_port_range
    web-nsg-sr2-source_address_prefix = var.web-nsg-sr2-source_address_prefix
    web-nsg-sr2-source_port_range = var.web-nsg-sr2-source_port_range/**/
    app-nsg-sr1-name = var.app-nsg-sr1-name
    app-nsg-sr1-priority = var.app-nsg-sr1-priority
    app-nsg-sr1-protocol = var.app-nsg-sr1-protocol
    app-nsg-sr1-access = var.app-nsg-sr1-access
    app-nsg-sr1-direction = var.app-nsg-sr1-direction
    app-nsg-sr1-source_address_prefix = var.app-nsg-sr1-source_address_prefix
    app-nsg-sr1-source_port_range = var.app-nsg-sr1-source_port_range
    app-nsg-sr1-destination_address_prefix = var.app-nsg-sr1-destination_address_prefix
    app-nsg-sr1-destination_port_range = var.app-nsg-sr1-destination_port_range
    app-nsg-sr2-name = var.app-nsg-sr2-name
    app-nsg-sr2-priority = var.app-nsg-sr2-priority
    app-nsg-sr2-protocol = var.app-nsg-sr2-protocol
    app-nsg-sr2-direction = var.app-nsg-sr2-direction
    app-nsg-sr2-access = var.app-nsg-sr2-access
    app-nsg-sr2-source_address_prefix = var.app-nsg-sr2-source_address_prefix
    app-nsg-sr2-source_port_range = var.app-nsg-sr2-source_port_range
    app-nsg-sr2-destination_address_prefix = var.app-nsg-sr2-destination_address_prefix
    app-nsg-sr2-destination_port_range = var.app-nsg-sr2-destination_port_range/*//*/
    app_subnet_id = var.app_subnet_id
    db-nsg-sr1-name = var.db-nsg-sr1-name
    db-nsg-sr1-priority = var.db-nsg-sr1-priority
    db-nsg-sr1-protocol = var.db-nsg-sr1-protocol
    db-nsg-sr1-direction = var.db-nsg-sr1-direction
    db-nsg-sr1-access = var.db-nsg-sr1-access
    db-nsg-sr1-destination_address_prefix = var.db-nsg-sr1-destination_address_prefix
    db-nsg-sr1-destination_port_range = var.db-nsg-sr1-destination_port_range
    db-nsg-sr1-source_address_prefix = var.db-nsg-sr1-source_address_prefix
    db-nsg-sr1-source_port_range = var.db-nsg-sr1-source_port_range/*//*/
    db-nsg-sr2-name = var.db-nsg-sr2-name
    db-nsg-sr2-priority = var.db-nsg-sr2-priority
    db-nsg-sr2-protocol = var.db-nsg-sr2-protocol
    db-nsg-sr2-direction = var.db-nsg-sr2-direction
    db-nsg-sr2-access = var.db-nsg-sr2-access
    db-nsg-sr2-destination_address_prefix = var.db-nsg-sr2-destination_address_prefix
    db-nsg-sr2-destination_port_range = var.db-nsg-sr2-destination_port_range
    db-nsg-sr2-source_address_prefix = var.db-nsg-sr2-source_address_prefix
    db-nsg-sr2-source_port_range = var.app-nsg-sr2-source_port_range
    web_subnet_id = var.web_subnet_id
    resource-group1-name = module.resourcegroup1.resource-group1-name
    location1 = module.resourcegroup1.location1
}

 module "storage1" {
        source = "./contos/platform/identity/storage"
        resource-group1-name = module.resourcegroup1.resource-group1-name
        location1 = module.resourcegroup1.location1
        primary_database1 = var.primary_database1
        primary_database1_admin = var.primary_database1_admin
        primary_database1_password = var.primary_database1_password
        primary_database1_version = var.primary_database1_version
    }
