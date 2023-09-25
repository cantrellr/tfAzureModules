#================================================================================
#
# KEYVAULTKEY.TF

resource "azurerm_key_vault_key" "generated" {
  name         = var.keyvaultkey_name
  key_vault_id = var.keyvaultkey_key_vault_id
  key_type     = var.keyvaultkey_key_type
  key_size     = var.keyvaultkey_key_size
  key_opts     = var.keyvaultkey_key_opts
}

output "keyvaultkey_id" {
    value = azurerm_key_vault_key.generated.id
}
output "keyvaultkey_name" {
    value = azurerm_key_vault_key.generated.name
}
output "keyvaultkey_version" {
    value = azurerm_key_vault_key.generated.version
}