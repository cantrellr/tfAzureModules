#================================================================================
#
# PUBLICIP.TF

resource "azurerm_public_ip" "publicip" {
  #count = var.to_provision == true ? 1 : 0
  resource_group_name = var.rg_name
  location            = var.rg_location
  tags                = var.rg_tags

  name                = var.publicip_name
  allocation_method   = var.publicip_allocation_method
  sku                 = var.publicip_sku
  domain_name_label   = var.publicip_domain_name_label
}

output "publicip_id" {
    value = azurerm_public_ip.publicip.id
}
output "publicip_ip_address" {
    value = azurerm_public_ip.publicip.ip_address
}
output "publicip_name" {
    value = azurerm_public_ip.publicip.name
}
output "publicip_domain_name_label" {
    value = azurerm_public_ip.publicip.domain_name_label
}