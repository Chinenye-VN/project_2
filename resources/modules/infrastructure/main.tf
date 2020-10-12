provider "aws" {
  region     = var.region
}
module "ec2" {
  source = "./ec2"
}
module "rds" {
  source = "./rds"
  
  vpc_security_group_ids = module.rds.vpc_security_group_ids
}
