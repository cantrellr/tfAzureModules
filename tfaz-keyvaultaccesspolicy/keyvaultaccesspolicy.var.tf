#================================================================================
#
# KEYVAULTACCESSPOLICY.VAR.TF

/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "key_vault_access_policy_key_vault_id" {
    type = string
	default = "key_vault_id"
}
variable "key_vault_access_policy_object_id" {
    type = string
	default = null
}
variable "key_vault_access_policy_application_id" {
    type = string
	default = null
}
variable "key_vault_access_policy_key_permissions" {
    type = list
	default = [
        "get"
    ]
}
variable "key_vault_access_policy_secret_permissions" {
    type = list
	default = [
        "get"
    ]
}
variable "key_vault_access_policy_storage_permissions" {
    type = list
	default = [
        "get"
    ]
}
variable "key_vault_access_policy_certificate_permissions" {
    type = list
	default = [
        "get"
    ]
}
