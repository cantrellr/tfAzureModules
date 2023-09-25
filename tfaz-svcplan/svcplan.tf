resource "azurerm_service_plan" "example" {
  name                = var.svcplan_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  kind                = var.kind
  reserved            = var.reserved
  is_xenon            = var.is_xenon

  sku {
    tier = var.sku_tier
    size = var.sku_size
    #capacity = var.sku_capacity
  }
}

output "svcplan_id" {
    value = azurerm_service_plan.example.id
}
output "svcplan_name" {
    value = azurerm_service_plan.example.name
}
output "svcplan_kind" {
    value = azurerm_service_plan.example.kind
}
output "svcplan_maximum_number_of_workers" {
    value = azurerm_service_plan.example.maximum_number_of_workers
}
