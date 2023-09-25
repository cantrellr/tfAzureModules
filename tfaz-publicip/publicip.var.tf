#================================================================================
#
# PUBLICIP.VAR.TF

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
variable "publicip_name" {
    type = string
	default = "publicip_name"
}
variable "publicip_allocation_method" {
	type = string
    default = "Dynamic"
}
variable "publicip_sku" {
	type = string
    default = "Basic"
}
variable "publicip_domain_name_label" {
	type = string
	default = null
}