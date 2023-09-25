#================================================================================
#
# VPNCON.VAR.TF

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
variable "vpncon_name" {
    type = string
	default = "vpncon_name"
}
variable "vpncon_type" {
    type = string
    default = "IPsec"
}
variable "vpncon_vnetgw_id" {
    type = string
    default = "vpncon_localgw_id"
}
variable "vpncon_localgw_id" {
    type = string
    default = "vpncon_localgw_id"
}
variable "vpncon_shared_key" {
    type = string
    default = "vpncon_shared_key"
}