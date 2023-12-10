data "aws_ssm_parameter" "user_name" {
  name = "docudb-${var.env}-master_username"
}
data "aws_ssm_parameter" "password" {
  name = "docudb-${var.env}-master_password"
}
