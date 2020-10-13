provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "Instances" {
  ami           = var.ami
  instance_type = var.instance-type
  key_name      = var.pem-key
  tags = {
    "Name" = "jenkins1"
  }

  connection {
    user     = "jenkins"
    key_file = "~/.ssh/MyKey.pem"
  }

  lifecycle {
    create_before_destroy = true

  }
  associate_public_ip_address = var.associate_public_ip_address

}

resource "aws_db_instance" "database" {
  allocated_storage   = 20
  storage_type        = "gp2"
  engine              = var.engine
  engine_version      = var.engine_version
  instance_class      = var.instance_class
  identifier          = "mydb"
  name                = var.name
  apply_immediately   = true
  skip_final_snapshot = true
  username            = var.username
  password            = var.password
}

resource "aws_db_instance" "test_database" {
  allocated_storage   = 20
  storage_type        = "gp2"
  engine              = "mysql"
  engine_version      = "5.7"
  instance_class      = "db.t2.micro"
  identifier          = "mytestdb"
  name                = "my_testdb"
  apply_immediately   = true
  skip_final_snapshot = true
  username            = var.username
  password            = var.password
}
