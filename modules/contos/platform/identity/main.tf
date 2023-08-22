resource "azurerm_management_group" "managementgroup_childB3" {
  display_name               = var.childgroupB3
  parent_management_group_id = var.childgroupB0-ID
  }
