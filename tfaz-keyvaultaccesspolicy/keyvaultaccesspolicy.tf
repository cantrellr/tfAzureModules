#================================================================================
#
# KEYVAULTACCESSPOLICY.TF

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault_access_policy" "keyvaultaccesspolicy" {
    key_vault_id            = var.key_vault_access_policy_key_vault_id
    tenant_id               = data.azurerm_client_config.current.tenant_id
    object_id               = var.key_vault_access_policy_object_id
    application_id          = var.key_vault_access_policy_application_id
    key_permissions         = var.key_vault_access_policy_key_permissions
    secret_permissions      = var.key_vault_access_policy_secret_permissions
    storage_permissions     = var.key_vault_access_policy_storage_permissions
    certificate_permissions = var.key_vault_access_policy_certificate_permissions
}

output "keyvaultaccesspolicy_id" {
    value = azurerm_key_vault_access_policy.keyvaultaccesspolicy.id
}