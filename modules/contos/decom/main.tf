resource "azurerm_management_group" "managementgroup_childA0" {
  display_name               = var.childgroupA0
  parent_management_group_id =var.managementgroup-parent-ID
  }
