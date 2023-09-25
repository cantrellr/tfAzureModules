resource "azuread_user" "jtodevad" {
  user_principal_name = var.azaduser_user_principal_name
  display_name        = var.azaduser_display_name
  mail_nickname       = var.azaduser_mail_nickname
  password            = var.azaduser_password
  country             = var.azaduser_country
}
