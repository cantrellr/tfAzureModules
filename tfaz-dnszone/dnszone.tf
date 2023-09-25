resource "azurerm_dns_zone" "dnszone" {
  name                = var.dnszone_name
  resource_group_name = var.rg_name
  tags                = var.rg_tags

}

output "dnszone_id" {
    value = azurerm_dns_zone.dnszone.id
}
output "dnszone_name" {
    value = azurerm_dns_zone.dnszone.name
}
output "dnszone_max_number_of_record_sets" {
    value = azurerm_dns_zone.dnszone.max_number_of_record_sets
}
output "dnszone_number_of_record_sets" {
    value = azurerm_dns_zone.dnszone.number_of_record_sets
}
output "dnszone_name_servers" {
    value = azurerm_dns_zone.dnszone.name_servers
}
