#================================================================================
#
# KEYVAULTKEY.VAR.TF

/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "keyvaultkey_name" {
    type = string
	default = "keyvaultkey_name"
}
variable "keyvaultkey_key_vault_id" {
	type = string
    default = "key_vault_id"
}
variable "keyvaultkey_key_type" {
	type = string
    default = "RSA"
}
variable "keyvaultkey_key_size" {
	type = number
    default = 2048
}
variable "keyvaultkey_key_opts" {
	type = list
    default = [
        "key_opts",
    ]
}