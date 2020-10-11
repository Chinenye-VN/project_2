resource "aws_instance" "public_instance" {
  ami                         = "${var.ami_id}"
  instance_type               = "t2.micro"
  subnet_id                   = "${var.public_subnet_id}"
  associate_public_ip_address = true

  tags = {
    Name = "${var.environment}-${var.region}-Public"
  }
}
resource "aws_instance" "Instances" {
  ami                    = var.ami
  instance_type          = var.instance-type
  key_name               = var.pem-key
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.vpc_security_group_ids]
  }
  lifecycle {
    create_before_destroy = true
  }
  tags = {var.tags

  associate_public_ip_address = var.associate_public_ip_address
    }
