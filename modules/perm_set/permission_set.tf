resource "aws_ssoadmin_permission_set" "client_perm_set" {
  name        = "test_set"
  description = "Your Permission Set Description"
  instance_arn="arn:aws:sso:::instance/ssoins-72238b70b2eebf44"
  session_duration = "PT2H"
}
