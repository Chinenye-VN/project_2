resource "aws_subnet" "public_subnet" {
  vpc_id     =  "${var.vpc_id}"
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "${var.environment}-${var.region}-Public-Subnet"
  }
