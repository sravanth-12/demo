

resource "azurerm_management_group" "managementgroup_childB2" {
  display_name               = var.childgroupB2
  parent_management_group_id = var.childgroupB0-ID
  }
