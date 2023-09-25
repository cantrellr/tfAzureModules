resource "azurerm_function_app" "functionapp" {
  name                       = var.functionapp_name
  location                   = var.rg_location
  resource_group_name        = var.rg_name
  app_service_plan_id        = var.functionapp_app_service_plan_id
  storage_account_name       = var.functionapp_storage_account_name
  storage_account_access_key = var.functionapp_storage_account_access_key
}