module "network"  {
  source = "github.com/nvrnagella/tf-module-vpc"
  env = var.env

  for_each = var.vpc
  cidr_block = each.value.cidr_block
  subnets_cidr = each.value.subnets_cidr
}
provider "aws" {
  region = "us-east-1"
}