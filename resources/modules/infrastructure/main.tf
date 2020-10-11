module "vpc" {
  source = "./vpc"

  environment = var.environment
  region      = var.region
}
module "ec2" {
  source = "./ec2"

  environment      = var.environment
  region           = var.region
  ami_id           = var.ami_id
}
module "rds" {
  source = "./rds"

  environment = var.environment
  region      = var.region
  vpc_id      = module.vpc.vpc_id
}
}
module "securitygroups" {
  source = "./securitygroups"

  environment   = var.environment
  region        = var.region
  vpc_id        = module.vpc.vpc_id
  ingress_ports = [22,80]
}
