resource "azurerm_dns_txt_record" "dnstxtrecord" {
  name                = var.dnstxtrecord_name
  zone_name           = var.dnstxtrecord_zone_name
  resource_group_name = var.rg_name
  ttl                 = var.dnstxtrecord_ttl
  record {
    value = var.dnstxtrecord_record
  }
}

output "dnstxtrecord_id" {
    value = azurerm_dns_txt_record.dnstxtrecord.id
}
output "dnstxtrecord_fqdn" {
    value = azurerm_dns_txt_record.dnstxtrecord.fqdn
}
