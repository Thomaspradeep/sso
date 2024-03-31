data "aws_ssoadmin_permission_set" "permission_set" {
  instance_arn = var.instance_arn
  name         = var.client_name
}

output "arn" {
  value = data.aws_ssoadmin_permission_set.permission_set.arn
}
