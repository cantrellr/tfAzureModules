/*variable "to_provision" {
    type = bool
    default = true
}*/
variable "rg_name" {
    type = string
	default = "rg_name"
}
variable "dnstxtrecord_name" {
    type = string
    default = "dnstxtrecord_name"
}
variable "dnstxtrecord_zone_name" {
    type = string
    default = "dnstxtrecord_zone_name"
}
variable "dnstxtrecord_ttl" {
    type = number
    default = 600
}
variable "dnstxtrecord_record" {
    type = string
    default = "dnstxtrecord_record"
}