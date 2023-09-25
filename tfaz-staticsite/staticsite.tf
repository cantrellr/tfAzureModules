resource "azurerm_static_site" "staticsite" {
  name                = var.staticsite_name
  location            = var.rg_location
  resource_group_name = var.rg_name

  sku_size = var.staticsite_sku_size
  sku_tier = var.staticsite_sku_tier
  tags = var.rg_tags

  identity {
    type = var.staticsite_identity_type
  }

}

output "staticsite_id" {
    value = azurerm_static_site.staticsite.id
}
output "staticsite_name" {
    value = azurerm_static_site.staticsite.name
}
output "staticsite_api_key" {
    value = azurerm_static_site.staticsite.api_key
}
output "staticsite_default_host_name" {
  value = "${azurerm_static_site.staticsite.default_host_name}"
}
output "staticsite_identity" {
    value = azurerm_static_site.staticsite.identity
}
