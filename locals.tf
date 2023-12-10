locals {
  name_prefix = "${var.env}-document_db"
  tags = merge(var.tags, { tf-module-name = "document_db"}, {env = var.env})
}