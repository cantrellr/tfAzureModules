resource "azurerm_dns_cname_record" "dnscnamerecord" {
  name                = var.dnscnamerecord_name
  zone_name           = var.dnscnamerecord_zone_name
  resource_group_name = var.rg_name
  ttl                 = var.dnscnamerecord_ttl
  record              = var.dnscnamerecord_record

}

output "dnscnamerecord_id" {
    value = azurerm_dns_cname_record.dnscnamerecord.id
}
output "dnscnamerecord_fqdn" {
    value = azurerm_dns_cname_record.dnscnamerecord.fqdn
}
