resource "aws_ssoadmin_permission_set" "example" {
  name        = "test_set"
  description = "Your Permission Set Description"
  instance_arn="arn:aws:sso:::instance/ssoins-72238b70b2eebf44"
  session_duration = "PT2H"
}

resource "aws_ssoadmin_account_assignment" "example" {
  instance_arn       = aws_ssoadmin_permission_set.example.instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.example.arn
  principal_type     = "USER"
  principal_id       = "c4689408-80b1-7075-4384-06471b80a0fd"
  target_type        = "AWS_ACCOUNT"
  target_id          = "058264506178"
}
resource "aws_ssoadmin_managed_policy_attachment" "example" {
  instance_arn       = var.instance_arn
  managed_policy_arn = "arn:aws:iam::aws:policy/AWSLambda_ReadOnlyAccess"
  permission_set_arn = aws_ssoadmin_permission_set.example.arn
}
