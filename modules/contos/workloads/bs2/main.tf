resource "azurerm_management_group" "managementgroup_childD2" {
  display_name               = var.childgroupD2
  parent_management_group_id = var.childgroupD0-ID
  }
