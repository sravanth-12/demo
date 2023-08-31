resource "azurerm_management_group" "managementgroup_childD0" {
  display_name               = var.childgroupD0
  parent_management_group_id = var.managementgroup-parent-ID
  }
