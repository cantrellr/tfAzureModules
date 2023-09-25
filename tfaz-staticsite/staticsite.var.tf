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
variable "staticsite_name" {
    type = string
    default = "staticsite_name"
}
variable "staticsite_sku_size" {
    type = string
    default = null
}
variable "staticsite_sku_tier" {
    type = string
    default = null
}
variable "staticsite_identity_type" {
    type = string
    default = null
}
