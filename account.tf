locals {
  email = "${var.email == "calculated" ? "craig+${var.organisation}_${var.application}_${var.environment}@barkingiguana.com" : var.email}"
  name  = "${var.name == "calculated" ? "${var.organisation}_${var.application}_${var.environment}" : var.name}"
  account_alias  = "${var.account_alias == "calculated" ? "${var.organisation}-${var.application}-${var.environment}" : var.account_alias}"
}

resource "aws_organizations_account" "account" {
  name      = "${local.name}"
  email     = "${local.email}"
  role_name = "${var.role_name}"
}

resource "aws_iam_account_alias" "alias" {
  account_alias = "${local.account_alias}"
}
