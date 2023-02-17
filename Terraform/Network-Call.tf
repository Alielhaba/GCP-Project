module "vpc" {
  source = "./VPC"
  vpc-name = "project-vpc"
  firewall-name = "firewall-pro"
  dir-type = "INGRESS"
  nat-name = "nat1"
  router-name = "custom-router"
  region-name = "us-west1"
  subnet-id = module.subnets.subnet-id-manage
  subnet-region = module.subnets.subnet-region-manage
}

module "subnets" {
    source = "./Subnets"
    subnet-name = var.subnet-name
    subnet-cider = var.subnet-cider
    subnet-region = var.regions
    vpc-link = module.vpc.vpc-link
}

