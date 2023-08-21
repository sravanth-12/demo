
resource "azurerm_management_group" "managementgroup_childB1" {
  display_name               = var.childgroupB1
  parent_management_group_id = var.childgroupB0-ID
  }
