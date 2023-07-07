module "network"  {
  source = "github.com/nvrnagella/tf-module-vpc"
  env = var.env
  default_vpc_id = var.default_vpc_id

  for_each = var.vpc
  cidr_block = each.value.cidr_block
  subnets_cidr = each.value.subnets_cidr
}
provider "aws" {
  region = "us-east-1"
}