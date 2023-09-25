/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "rg_name" {
    type = string
	default = "rg_name"
}
variable "dnscnamerecord_name" {
    type = string
    default = "dnscnamerecord_name"
}
variable "dnscnamerecord_zone_name" {
    type = string
    default = "dnscnamerecord_zone_name"
}
variable "dnscnamerecord_ttl" {
    type = number
    default = 600
}
variable "dnscnamerecord_record" {
    type = string
    default = "dnscnamerecord_record"
}
