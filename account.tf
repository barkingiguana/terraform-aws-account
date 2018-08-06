locals {
  email = "${var.email == "calculated" ? "craig+${var.organisation}_${var.application}_${var.environment}@barkingiguana.com" : var.email}"
  name  = "${var.name == "calculated" ? "${var.organisation}_${var.application}_${var.environment}" : var.name}"
}

resource "aws_organizations_account" "account" {
  name      = "${local.name}"
  email     = "${local.email}"
  role_name = "${var.role_name}"
}
