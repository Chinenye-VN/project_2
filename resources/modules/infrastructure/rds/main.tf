resource "aws_db_instance" "database" {
  allocated_storage       = 20
  storage_type            = "gp2"
  engine                  = var.engine
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  name                    = var.name
  username                = var.username
  password                = var.password
  vpc_security_group_ids  = var.vpc_security_group_ids
}
