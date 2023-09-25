/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "rg_name" {
    type = string
	default = "rg_name"
}
variable "dnszone_name" {
    type = string
    default = "dnszone_name"
}
variable "rg_tags" {
    type = map
}
