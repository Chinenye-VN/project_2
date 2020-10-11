module "ec2" {
  source = "./ec2"

  region           = var.region
  ami_id           = var.ami_id
}
module "rds" {
  source = "./rds"

  region      = var.region
  vpc_id      = module.vpc.vpc_id
}
