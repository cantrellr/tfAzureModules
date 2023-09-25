#================================================================================
#
# KEYVAULT.TF

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "keyvault" {
  location                        = var.rg_location
  resource_group_name             = var.rg_name
  tags                            = var.rg_tags
  
  name                            = var.keyvault_name
  tenant_id                       = var.keyvault_tenant_id
  enabled_for_disk_encryption     = var.keyvault_enabled_for_disk_encryption
  enabled_for_deployment          = var.keyvault_enabled_for_deployment
  enabled_for_template_deployment = var.keyvault_enabled_for_template_deployment
  soft_delete_retention_days      = var.keyvault_soft_delete_retention_days
  purge_protection_enabled        = var.keyvault_purge_protection_enabled
  sku_name                        = var.keyvault_sku_name

  /*access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
    key_permissions = var.access_policy_key_permissions
    secret_permissions = var.access_policy_secret_permissions
    storage_permissions = var.access_policy_storage_permissions
    certificate_permissions = var.access_policy_certificate_permissions
  }*/
}

output "keyvault_id" {
    value = azurerm_key_vault.keyvault.id
}
output "keyvault_name" {
    value = azurerm_key_vault.keyvault.name
}
output "keyvault_vault_uri" {
    value = azurerm_key_vault.keyvault.vault_uri
}