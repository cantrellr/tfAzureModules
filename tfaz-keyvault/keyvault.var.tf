#================================================================================
#
# KEYVAULT.VAR.TF

/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "rg_location" {
    type = string
	default = "rg_location"
}
variable "rg_name" {
    type = string
	default = "rg_name"
}
variable "rg_tags" {
    type = map
}
variable "keyvault_name" {
    type = string
	default = "keyvault_name"
}
variable "keyvault_tenant_id" {
    type = string
	default = null
}
variable "keyvault_enabled_for_disk_encryption" {
	type = bool
    default = true
}
variable "keyvault_enabled_for_deployment" {
	type = bool
    default = false
}
variable "keyvault_enabled_for_template_deployment" {
	type = bool
    default = false
}
variable "keyvault_soft_delete_retention_days" {
	type = number
    default = 7
}
variable "keyvault_purge_protection_enabled" {
	type = bool
    default = false
}
variable "keyvault_sku_name" {
	type = string
    default = "standard"
}
/*variable "access_policy_key_permissions" {
    type = list
	default = [
        "access_policy_key_permissions"
    ]
}
variable "access_policy_secret_permissions" {
    type = list
	default = [
        "access_policy_secret_permissions"
    ]
}
variable "access_policy_storage_permissions" {
    type = list
	default = [
        "access_policy_storage_permissions"
    ]
}
variable "access_policy_certificate_permissions" {
    type = list
	default = [
        "access_policy_certificate_permissions"
    ]
}*/