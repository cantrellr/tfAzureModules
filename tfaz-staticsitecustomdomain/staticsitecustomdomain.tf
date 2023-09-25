resource "azurerm_static_site_custom_domain" "staticsitecustomdomain" {
  domain_name     = var.staticsitecustomdomain_domain_name
  static_site_id  = var.staticsitecustomdomain_static_site_id
  validation_type = "dns-txt-token"
}

output "staticsitecustomdomain_id" {
    value = azurerm_static_site_custom_domain.staticsitecustomdomain.id
}
output "staticsitecustomdomain_validation_token" {
    value = azurerm_static_site_custom_domain.staticsitecustomdomain.validation_token
}
