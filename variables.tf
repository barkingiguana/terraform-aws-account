variable "organisation" {}
variable "application" {}
variable "environment" {}

variable "role_name" {
  default = "OrganizationAccountAccessRole"
}

variable "email" {
  default = "calculated"
}

variable "name" {
  default = "calculated"
}

variable "account_alias" {
  default = "calculated"
}
