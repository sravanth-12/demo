resource "azurerm_management_group" "managementgroup_childD1" {
  display_name               = var.childgroupD1
  parent_management_group_id = var.childgroupD0-ID
  }
