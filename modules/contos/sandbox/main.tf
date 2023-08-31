resource "azurerm_management_group" "managementgroup_childC0" {
  display_name               = var.childgroupC0
  parent_management_group_id = var.managementgroup-parent-ID
  }
