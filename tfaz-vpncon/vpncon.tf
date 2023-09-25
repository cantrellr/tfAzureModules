#================================================================================
#
# CONNECTION.TF

resource "azurerm_virtual_network_gateway_connection" "vpncon" {
  #count = var.to_provision == true ? 1 : 0
  location                   = var.rg_location
  resource_group_name        = var.rg_name
  tags                       = var.rg_tags

  name                       = var.vpncon_name
  type                       = var.vpncon_type
  virtual_network_gateway_id = var.vpncon_vnetgw_id
  local_network_gateway_id   = var.vpncon_localgw_id
  shared_key                 = var.vpncon_shared_key
}

output "vpncon_id" {
  value = azurerm_virtual_network_gateway_connection.vpncon.id
}
output "vpncon_name" {
  value = azurerm_virtual_network_gateway_connection.vpncon.name
}