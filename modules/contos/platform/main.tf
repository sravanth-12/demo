resource "azurerm_management_group" "managementgroup_childB0" {
  display_name               = var.childgroupB0
  parent_management_group_id = var.managementgroup-parent-ID
  }
