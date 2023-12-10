locals {
  name_prefix = "${var.env}-docudb"
  tags = merge(var.tags, { tf-module-name = "docudb"}, {env = var.env})
}