resource "aws_docdb_subnet_group" "main" {
  name       = "${local.name_prefix}-subnet-group"
  subnet_ids = var.subnet_ids
  tags = merge(local.tags, {Name = "${local.name_prefix}-subnet-group" })
}
resource "aws_docdb_cluster" "docdb" {
  cluster_identifier      = "${local.name_prefix}-docdb-cluster"
  engine                  = "docdb"
  master_username         = data.aws_ssm_parameter.user_name.value
  master_password         = data.aws_ssm_parameter.password.value
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
  skip_final_snapshot     = true
}