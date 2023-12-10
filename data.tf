data "aws_ssm_parameter" "master_username" {
  name = "docudb.${var.env}-master_username"
}
data "aws_ssm_parameter" "master_password" {
  name = "docudb.${var.env}-master_password"
}
