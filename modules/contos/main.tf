resource "azurerm_management_group" "managementgroup_parent" {
  display_name = var.managementgroup
/* If you wish to use Subscription ID Mapping with Management Groups
  subscription_ids = [
    data.azurerm_subscription.current.subscription_id,
  ] 
*/
}
