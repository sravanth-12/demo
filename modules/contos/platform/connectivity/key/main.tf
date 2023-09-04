data "azurerm_client_config" "current" {}


resource "azurerm_key_vault" "app_vault" {  
  name                        = var.app_vault-name
  location                    = var.location
  resource_group_name         = var.resource-group-name  
  tenant_id                   = var.tenant_id
  soft_delete_retention_days  = var.soft_delete_retention_days
  purge_protection_enabled    = var.purge_protection_enabled
  sku_name = var.sku_name
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
    key_permissions = [
      "Get",
    ]
    secret_permissions = [
      "Get", "Backup", "Delete", "List", "Purge", "Recover", "Restore", "Set",
    ]
    storage_permissions = [
      "Get",
    ]
  }
 // depends_on = [
  //  azurerm_resource_group.app_grp
 // ]
}

# We are creating a secret in the key vault
resource "azurerm_key_vault_secret" "vmpassword" {
  name         = var.vmpassword-name
  value        = var.vmpassword-value
  key_vault_id = azurerm_key_vault.app_vault.id
 // depends_on = [ azurerm_key_vault.app_vault ]
}
