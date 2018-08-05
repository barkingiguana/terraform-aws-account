output "administrator_role_arn" {
  value = "arn:aws:iam::${aws_organizations_account.account.id}:role/${var.role_name}"
}

output "account_arn" {
  value = "${aws_organizations_account.account.arn}"
}

output "account_id" {
  value = "${aws_organizations_account.account.id}"
}
